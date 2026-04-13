import 'package:injectable/injectable.dart';

import '../../domain/entities/kanban_task.dart';
import '../dto/indicator_task_dto.dart';

@injectable
class KanbanTaskMapper {
  KanbanTask? toDomain(IndicatorTaskDto dto) {
    final id = dto.indicatorToMoId;
    final parentId = dto.parentId;
    final order = dto.order;

    if (id == null || parentId == null || order == null) {
      return null;
    }

    final normalizedName = (dto.name ?? '').trim();

    return KanbanTask(
      id: id,
      parentId: parentId,
      order: order,
      name: normalizedName.isNotEmpty ? normalizedName : 'Task #$id',
    );
  }
}
