import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/injection.dart';
import '../bloc/kanban_board_bloc.dart';
import '../widgets/kanban_board_status_view.dart';
import '../widgets/kanban_column_widget.dart';

class KanbanBoardPage extends StatelessWidget {
  const KanbanBoardPage({
    super.key,
    required this.themeMode,
    required this.onThemeChanged,
  });

  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<KanbanBoardBloc>()..add(const KanbanBoardEvent.boardOpened()),
      child: _KanbanBoardView(
        themeMode: themeMode,
        onThemeChanged: onThemeChanged,
      ),
    );
  }
}

class _KanbanBoardView extends StatelessWidget {
  const _KanbanBoardView({
    required this.themeMode,
    required this.onThemeChanged,
  });

  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KPI Drive Kanban Board'),
        actions: [
          PopupMenuButton<ThemeMode>(
            tooltip: 'Theme',
            initialValue: themeMode,
            onSelected: onThemeChanged,
            itemBuilder: (context) => [
              PopupMenuItem<ThemeMode>(
                value: ThemeMode.light,
                child: Row(
                  children: [
                    Icon(
                      Icons.light_mode,
                      size: 18,
                      color: themeMode == ThemeMode.light
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    const SizedBox(width: 8),
                    const Text('Light theme'),
                  ],
                ),
              ),
              PopupMenuItem<ThemeMode>(
                value: ThemeMode.dark,
                child: Row(
                  children: [
                    Icon(
                      Icons.dark_mode,
                      size: 18,
                      color: themeMode == ThemeMode.dark
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    const SizedBox(width: 8),
                    const Text('Dark theme'),
                  ],
                ),
              ),
            ],
            icon: const Icon(Icons.palette_outlined),
          ),
          IconButton(
            tooltip: 'Refresh board',
            onPressed: () {
              context.read<KanbanBoardBloc>().add(
                const KanbanBoardEvent.boardRefreshed(),
              );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: BlocConsumer<KanbanBoardBloc, KanbanBoardState>(
        listenWhen: (previous, current) =>
            previous.actionMessageId != current.actionMessageId &&
            current.actionMessage != null,
        listener: (context, state) {
          final message = state.actionMessage;
          if (message == null) {
            return;
          }

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(message)));
        },
        builder: (context, state) {
          switch (state.viewStatus) {
            case KanbanBoardViewStatus.initial:
            case KanbanBoardViewStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case KanbanBoardViewStatus.error:
              return KanbanBoardStatusView(
                title: 'Could not load board',
                subtitle:
                    state.screenErrorMessage ??
                    'Please check internet connection and try again.',
                buttonLabel: 'Retry',
                onPressed: () {
                  context.read<KanbanBoardBloc>().add(
                    const KanbanBoardEvent.retryPressed(),
                  );
                },
              );
            case KanbanBoardViewStatus.empty:
              return KanbanBoardStatusView(
                title: 'No tasks for this period',
                subtitle:
                    'Nothing to show yet. Refresh to try loading data again.',
                buttonLabel: 'Refresh',
                onPressed: () {
                  context.read<KanbanBoardBloc>().add(
                    const KanbanBoardEvent.boardRefreshed(),
                  );
                },
              );
            case KanbanBoardViewStatus.content:
              return Column(
                children: [
                  if (state.isSaving)
                    const LinearProgressIndicator(minHeight: 2),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.all(12),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, columnIndex) {
                        final column = state.columns[columnIndex];

                        return KanbanColumnWidget(
                          column: column,
                          savingTaskIds: state.savingTaskIds,
                          isBoardSaving: state.isSaving,
                          onTaskDropped: (dragData, toIndex) {
                            context.read<KanbanBoardBloc>().add(
                              KanbanBoardEvent.taskDropped(
                                taskId: dragData.taskId,
                                fromParentId: dragData.fromParentId,
                                fromIndex: dragData.fromIndex,
                                toParentId: column.parentId,
                                toIndex: toIndex,
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 12),
                      itemCount: state.columns.length,
                    ),
                  ),
                ],
              );
          }
        },
      ),
    );
  }
}
