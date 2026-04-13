import 'package:injectable/injectable.dart';

import '../entities/task_move_patch.dart';
import '../repositories/kanban_repository.dart';

@injectable
class PersistTaskMoveUseCase {
  const PersistTaskMoveUseCase(this._repository);

  final KanbanRepository _repository;

  Future<void> call(TaskMovePatch patch) {
    return _repository.persistMove(patch);
  }
}
