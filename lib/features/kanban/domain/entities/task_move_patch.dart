import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_move_patch.freezed.dart';

@freezed
abstract class TaskPositionUpdate with _$TaskPositionUpdate {
  const factory TaskPositionUpdate({
    required int taskId,
    required int parentId,
    required int order,
  }) = _TaskPositionUpdate;
}

@freezed
abstract class TaskMovePatch with _$TaskMovePatch {
  const factory TaskMovePatch({
    required int movedTaskId,
    required int fromParentId,
    required int toParentId,
    required int toIndex,
    required List<TaskPositionUpdate> updates,
  }) = _TaskMovePatch;
}
