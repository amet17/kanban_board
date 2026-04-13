import 'package:freezed_annotation/freezed_annotation.dart';

part 'kanban_task.freezed.dart';

@freezed
abstract class KanbanTask with _$KanbanTask {
  const factory KanbanTask({
    required int id,
    required String name,
    required int parentId,
    required int order,
  }) = _KanbanTask;
}
