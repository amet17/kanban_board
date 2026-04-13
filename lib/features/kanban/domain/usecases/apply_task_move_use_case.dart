import 'package:injectable/injectable.dart';

import '../entities/kanban_column.dart';
import '../entities/kanban_task.dart';
import '../entities/task_move_patch.dart';

class MoveTaskParams {
  const MoveTaskParams({
    required this.columns,
    required this.taskId,
    required this.fromParentId,
    required this.fromIndex,
    required this.toParentId,
    required this.toIndex,
  });

  final List<KanbanColumn> columns;
  final int taskId;
  final int fromParentId;
  final int fromIndex;
  final int toParentId;
  final int toIndex;
}

class MoveTaskResult {
  const MoveTaskResult({required this.columns, required this.patch});

  final List<KanbanColumn> columns;
  final TaskMovePatch patch;
}

@injectable
class ApplyTaskMoveUseCase {
  const ApplyTaskMoveUseCase();

  MoveTaskResult call(MoveTaskParams params) {
    final originalTasksById = <int, KanbanTask>{
      for (final task in params.columns.expand((column) => column.tasks))
        task.id: task,
    };

    final titlesByParentId = <int, String>{
      for (final column in params.columns) column.parentId: column.title,
    };

    final columnOrder = params.columns
        .map((column) => column.parentId)
        .toList();
    if (!columnOrder.contains(params.toParentId)) {
      columnOrder.add(params.toParentId);
    }

    final mutableColumns = <int, List<KanbanTask>>{
      for (final column in params.columns)
        column.parentId: List<KanbanTask>.from(column.tasks),
    };

    final sourceTasks = mutableColumns[params.fromParentId];
    if (sourceTasks == null || sourceTasks.isEmpty) {
      return MoveTaskResult(
        columns: params.columns,
        patch: TaskMovePatch(
          movedTaskId: params.taskId,
          fromParentId: params.fromParentId,
          toParentId: params.toParentId,
          toIndex: params.toIndex,
          updates: const <TaskPositionUpdate>[],
        ),
      );
    }

    final sourceIndex =
        params.fromIndex >= 0 && params.fromIndex < sourceTasks.length
        ? params.fromIndex
        : sourceTasks.indexWhere((task) => task.id == params.taskId);

    if (sourceIndex < 0) {
      return MoveTaskResult(
        columns: params.columns,
        patch: TaskMovePatch(
          movedTaskId: params.taskId,
          fromParentId: params.fromParentId,
          toParentId: params.toParentId,
          toIndex: params.toIndex,
          updates: const <TaskPositionUpdate>[],
        ),
      );
    }

    final movedTask = sourceTasks.removeAt(sourceIndex);

    final destinationTasks = mutableColumns.putIfAbsent(
      params.toParentId,
      () => <KanbanTask>[],
    );

    var destinationIndex = params.toIndex;
    if (params.fromParentId == params.toParentId &&
        destinationIndex > sourceIndex) {
      destinationIndex -= 1;
    }

    if (destinationIndex < 0) {
      destinationIndex = 0;
    }
    if (destinationIndex > destinationTasks.length) {
      destinationIndex = destinationTasks.length;
    }

    final movedTaskWithNewParent = movedTask.copyWith(
      parentId: params.toParentId,
    );
    destinationTasks.insert(destinationIndex, movedTaskWithNewParent);

    final affectedParentIds = <int>{params.fromParentId, params.toParentId};

    for (final parentId in affectedParentIds) {
      final tasks = mutableColumns[parentId];
      if (tasks == null) {
        continue;
      }
      for (var i = 0; i < tasks.length; i++) {
        tasks[i] = tasks[i].copyWith(order: i + 1, parentId: parentId);
      }
    }

    final updatedColumns = columnOrder
        .map((parentId) {
          final tasks = mutableColumns[parentId] ?? <KanbanTask>[];
          return KanbanColumn(
            parentId: parentId,
            title: titlesByParentId[parentId] ?? 'Folder $parentId',
            tasks: List<KanbanTask>.unmodifiable(tasks),
          );
        })
        .toList(growable: false);

    final changedUpdates = <TaskPositionUpdate>[];
    for (final task in updatedColumns.expand((column) => column.tasks)) {
      final original = originalTasksById[task.id];
      if (original == null) {
        continue;
      }
      if (original.parentId != task.parentId || original.order != task.order) {
        changedUpdates.add(
          TaskPositionUpdate(
            taskId: task.id,
            parentId: task.parentId,
            order: task.order,
          ),
        );
      }
    }

    changedUpdates.sort((a, b) {
      final parentCompare = a.parentId.compareTo(b.parentId);
      if (parentCompare != 0) {
        return parentCompare;
      }
      return a.order.compareTo(b.order);
    });

    return MoveTaskResult(
      columns: updatedColumns,
      patch: TaskMovePatch(
        movedTaskId: params.taskId,
        fromParentId: params.fromParentId,
        toParentId: params.toParentId,
        toIndex: destinationIndex,
        updates: List<TaskPositionUpdate>.unmodifiable(changedUpdates),
      ),
    );
  }
}
