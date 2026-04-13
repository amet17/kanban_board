import 'package:injectable/injectable.dart';

import '../entities/kanban_column.dart';
import '../entities/kanban_task.dart';
import '../repositories/kanban_repository.dart';

@injectable
class LoadKanbanBoardUseCase {
  const LoadKanbanBoardUseCase(this._repository);

  final KanbanRepository _repository;

  Future<List<KanbanColumn>> call() async {
    final tasks = await _repository.loadTasks();
    return _groupIntoColumns(tasks);
  }

  List<KanbanColumn> _groupIntoColumns(List<KanbanTask> tasks) {
    final tasksById = <int, KanbanTask>{
      for (final task in tasks) task.id: task,
    };
    final groups = <int, List<KanbanTask>>{};

    for (final task in tasks) {
      groups.putIfAbsent(task.parentId, () => <KanbanTask>[]).add(task);
    }

    final sortedParentIds = groups.keys.toList()..sort();

    return sortedParentIds
        .map((parentId) {
          final sortedTasks = List<KanbanTask>.from(groups[parentId]!)
            ..sort((a, b) => a.order.compareTo(b.order));

          final titleTask = tasksById[parentId];
          final title = titleTask?.name.trim().isNotEmpty == true
              ? titleTask!.name
              : 'Folder $parentId';

          return KanbanColumn(
            parentId: parentId,
            title: title,
            tasks: sortedTasks,
          );
        })
        .toList(growable: false);
  }
}
