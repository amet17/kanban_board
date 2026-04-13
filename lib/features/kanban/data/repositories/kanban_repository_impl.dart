import 'package:injectable/injectable.dart';

import '../../domain/entities/kanban_task.dart';
import '../../domain/entities/task_move_patch.dart';
import '../../domain/repositories/kanban_repository.dart';
import '../constants/kanban_request_defaults.dart';
import '../datasources/kanban_remote_data_source.dart';
import '../dto/save_indicator_field_request_dto.dart';
import '../mappers/kanban_task_mapper.dart';

@LazySingleton(as: KanbanRepository)
class KanbanRepositoryImpl implements KanbanRepository {
  const KanbanRepositoryImpl(this._remoteDataSource, this._taskMapper);

  final KanbanRemoteDataSource _remoteDataSource;
  final KanbanTaskMapper _taskMapper;

  @override
  Future<List<KanbanTask>> loadTasks() async {
    final dtos = await _remoteDataSource.loadTasks();
    final mapped =
        dtos.map(_taskMapper.toDomain).whereType<KanbanTask>().toList()
          ..sort((a, b) {
            final parentCompare = a.parentId.compareTo(b.parentId);
            if (parentCompare != 0) {
              return parentCompare;
            }
            return a.order.compareTo(b.order);
          });

    return mapped;
  }

  @override
  Future<void> saveTaskOrder({required int taskId, required int order}) {
    return _remoteDataSource.saveField(
      SaveIndicatorFieldRequestDto(
        periodStart: KanbanRequestDefaults.periodStart,
        periodEnd: KanbanRequestDefaults.periodEnd,
        periodKey: KanbanRequestDefaults.periodKey,
        indicatorToMoId: taskId,
        fieldName: 'order',
        fieldValue: '$order',
        authUserId: KanbanRequestDefaults.authUserId,
      ),
    );
  }

  @override
  Future<void> saveTaskParent({required int taskId, required int parentId}) {
    return _remoteDataSource.saveField(
      SaveIndicatorFieldRequestDto(
        periodStart: KanbanRequestDefaults.periodStart,
        periodEnd: KanbanRequestDefaults.periodEnd,
        periodKey: KanbanRequestDefaults.periodKey,
        indicatorToMoId: taskId,
        fieldName: 'parent_id',
        fieldValue: '$parentId',
        authUserId: KanbanRequestDefaults.authUserId,
      ),
    );
  }

  @override
  Future<void> persistMove(TaskMovePatch patch) async {
    if (patch.updates.isEmpty) {
      return;
    }

    if (patch.fromParentId != patch.toParentId) {
      await saveTaskParent(
        taskId: patch.movedTaskId,
        parentId: patch.toParentId,
      );
    }

    for (final update in patch.updates) {
      await saveTaskOrder(taskId: update.taskId, order: update.order);
    }
  }
}
