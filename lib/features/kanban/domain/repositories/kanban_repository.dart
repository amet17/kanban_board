import '../entities/kanban_task.dart';
import '../entities/task_move_patch.dart';

abstract interface class KanbanRepository {
  Future<List<KanbanTask>> loadTasks();

  Future<void> saveTaskParent({required int taskId, required int parentId});

  Future<void> saveTaskOrder({required int taskId, required int order});

  Future<void> persistMove(TaskMovePatch patch);
}
