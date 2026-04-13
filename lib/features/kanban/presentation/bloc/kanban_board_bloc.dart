import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/kanban_column.dart';
import '../../domain/usecases/apply_task_move_use_case.dart';
import '../../domain/usecases/load_kanban_board_use_case.dart';
import '../../domain/usecases/persist_task_move_use_case.dart';

part 'kanban_board_bloc.freezed.dart';
part 'kanban_board_event.dart';
part 'kanban_board_state.dart';

@injectable
class KanbanBoardBloc extends Bloc<KanbanBoardEvent, KanbanBoardState> {
  KanbanBoardBloc(
    this._loadKanbanBoardUseCase,
    this._applyTaskMoveUseCase,
    this._persistTaskMoveUseCase,
  ) : super(const KanbanBoardState()) {
    on<_BoardOpened>(_onBoardOpened);
    on<_BoardRefreshed>(_onBoardRefreshed);
    on<_RetryPressed>(_onRetryPressed);
    on<_TaskDropped>(_onTaskDropped);
  }

  final LoadKanbanBoardUseCase _loadKanbanBoardUseCase;
  final ApplyTaskMoveUseCase _applyTaskMoveUseCase;
  final PersistTaskMoveUseCase _persistTaskMoveUseCase;

  Future<void> _onBoardOpened(
    _BoardOpened event,
    Emitter<KanbanBoardState> emit,
  ) async {
    await _loadBoard(emit, showLoader: true);
  }

  Future<void> _onBoardRefreshed(
    _BoardRefreshed event,
    Emitter<KanbanBoardState> emit,
  ) async {
    await _loadBoard(
      emit,
      showLoader:
          state.columns.isEmpty ||
          state.viewStatus == KanbanBoardViewStatus.error,
    );
  }

  Future<void> _onRetryPressed(
    _RetryPressed event,
    Emitter<KanbanBoardState> emit,
  ) async {
    await _loadBoard(emit, showLoader: true);
  }

  Future<void> _loadBoard(
    Emitter<KanbanBoardState> emit, {
    required bool showLoader,
  }) async {
    if (showLoader) {
      emit(
        state.copyWith(
          viewStatus: KanbanBoardViewStatus.loading,
          screenErrorMessage: null,
          actionMessage: null,
        ),
      );
    }

    try {
      final columns = await _loadKanbanBoardUseCase();

      emit(
        state.copyWith(
          columns: columns,
          viewStatus: columns.isEmpty
              ? KanbanBoardViewStatus.empty
              : KanbanBoardViewStatus.content,
          screenErrorMessage: null,
        ),
      );
    } catch (error) {
      if (state.columns.isNotEmpty && !showLoader) {
        emit(
          state.copyWith(
            actionMessage: 'Could not refresh board data.',
            actionMessageId: state.actionMessageId + 1,
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          viewStatus: KanbanBoardViewStatus.error,
          screenErrorMessage:
              'Could not load tasks. Please check connection and retry.',
        ),
      );
    }
  }

  Future<void> _onTaskDropped(
    _TaskDropped event,
    Emitter<KanbanBoardState> emit,
  ) async {
    if (state.viewStatus != KanbanBoardViewStatus.content) {
      return;
    }
    if (state.isSaving || state.savingTaskIds.contains(event.taskId)) {
      return;
    }

    final previousColumns = state.columns;

    final moveResult = _applyTaskMoveUseCase(
      MoveTaskParams(
        columns: state.columns,
        taskId: event.taskId,
        fromParentId: event.fromParentId,
        fromIndex: event.fromIndex,
        toParentId: event.toParentId,
        toIndex: event.toIndex,
      ),
    );

    if (moveResult.patch.updates.isEmpty) {
      return;
    }

    emit(
      state.copyWith(
        columns: moveResult.columns,
        isSaving: true,
        savingTaskIds: <int>{event.taskId},
        actionMessage: null,
      ),
    );

    try {
      await _persistTaskMoveUseCase(moveResult.patch);
      emit(state.copyWith(isSaving: false, savingTaskIds: <int>{}));
    } catch (error) {
      emit(
        state.copyWith(
          columns: previousColumns,
          isSaving: false,
          savingTaskIds: <int>{},
          actionMessage: 'Could not save move. Board reloaded.',
          actionMessageId: state.actionMessageId + 1,
        ),
      );

      add(const KanbanBoardEvent.boardRefreshed());
    }
  }
}
