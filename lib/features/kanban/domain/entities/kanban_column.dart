import 'package:freezed_annotation/freezed_annotation.dart';

import 'kanban_task.dart';

part 'kanban_column.freezed.dart';

@freezed
abstract class KanbanColumn with _$KanbanColumn {
  const factory KanbanColumn({
    required int parentId,
    required String title,
    required List<KanbanTask> tasks,
  }) = _KanbanColumn;
}
