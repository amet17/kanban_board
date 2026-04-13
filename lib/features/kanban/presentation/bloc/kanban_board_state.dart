part of 'kanban_board_bloc.dart';

enum KanbanBoardViewStatus { initial, loading, content, empty, error }

@freezed
abstract class KanbanBoardState with _$KanbanBoardState {
  const factory KanbanBoardState({
    @Default(KanbanBoardViewStatus.initial) KanbanBoardViewStatus viewStatus,
    @Default(<KanbanColumn>[]) List<KanbanColumn> columns,
    @Default(false) bool isSaving,
    @Default(<int>{}) Set<int> savingTaskIds,
    String? screenErrorMessage,
    String? actionMessage,
    @Default(0) int actionMessageId,
  }) = _KanbanBoardState;
}
