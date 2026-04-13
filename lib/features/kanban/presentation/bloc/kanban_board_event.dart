part of 'kanban_board_bloc.dart';

@freezed
abstract class KanbanBoardEvent with _$KanbanBoardEvent {
  const factory KanbanBoardEvent.boardOpened() = _BoardOpened;

  const factory KanbanBoardEvent.boardRefreshed() = _BoardRefreshed;

  const factory KanbanBoardEvent.retryPressed() = _RetryPressed;

  const factory KanbanBoardEvent.taskDropped({
    required int taskId,
    required int fromParentId,
    required int fromIndex,
    required int toParentId,
    required int toIndex,
  }) = _TaskDropped;
}
