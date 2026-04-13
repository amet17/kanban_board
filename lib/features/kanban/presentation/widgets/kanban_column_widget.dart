import 'package:flutter/material.dart';

import '../../domain/entities/kanban_column.dart';
import 'kanban_task_card_widget.dart';
import 'task_drag_data.dart';

class KanbanColumnWidget extends StatelessWidget {
  const KanbanColumnWidget({
    super.key,
    required this.column,
    required this.savingTaskIds,
    required this.isBoardSaving,
    required this.onTaskDropped,
  });

  final KanbanColumn column;
  final Set<int> savingTaskIds;
  final bool isBoardSaving;
  final void Function(TaskDragData data, int toIndex) onTaskDropped;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final onSurface = Theme.of(context).colorScheme.onSurface;
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF0F1622) : const Color(0xFFE2E8F0),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 12, 14, 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    column.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: onSurface,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF1B2432) : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '${column.tasks.length}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: isDark ? const Color(0xFF243447) : const Color(0xFFCBD5E1),
          ),
          Expanded(
            child: column.tasks.isEmpty
                ? _EmptyDropZone(
                    isDark: isDark,
                    primary: primary,
                    onAccept: (dragData) => onTaskDropped(dragData, 0),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: column.tasks.length + 1,
                    itemBuilder: (context, index) {
                      if (index == column.tasks.length) {
                        return _DropZone(
                          primary: primary,
                          onAccept: (dragData) =>
                              onTaskDropped(dragData, index),
                        );
                      }

                      final task = column.tasks[index];
                      final isTaskSaving = savingTaskIds.contains(task.id);

                      return Column(
                        children: [
                          _DropZone(
                            primary: primary,
                            onAccept: (dragData) =>
                                onTaskDropped(dragData, index),
                          ),
                          KanbanTaskCardWidget(
                            task: task,
                            isSaving: isTaskSaving,
                            isDragEnabled: !isBoardSaving,
                            dragData: TaskDragData(
                              taskId: task.id,
                              fromParentId: column.parentId,
                              fromIndex: index,
                            ),
                          ),
                          const SizedBox(height: 6),
                        ],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class _DropZone extends StatelessWidget {
  const _DropZone({required this.primary, required this.onAccept});

  final Color primary;
  final ValueChanged<TaskDragData> onAccept;

  @override
  Widget build(BuildContext context) {
    return DragTarget<TaskDragData>(
      onAcceptWithDetails: (details) => onAccept(details.data),
      builder: (context, candidateData, rejectedData) {
        final isActive = candidateData.isNotEmpty;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          height: isActive ? 32 : 18,
          decoration: BoxDecoration(
            color: isActive
                ? primary.withValues(alpha: 0.2)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: isActive ? Border.all(color: primary, width: 1.2) : null,
          ),
        );
      },
    );
  }
}

class _EmptyDropZone extends StatelessWidget {
  const _EmptyDropZone({
    required this.isDark,
    required this.primary,
    required this.onAccept,
  });

  final bool isDark;
  final Color primary;
  final ValueChanged<TaskDragData> onAccept;

  @override
  Widget build(BuildContext context) {
    return DragTarget<TaskDragData>(
      onAcceptWithDetails: (details) => onAccept(details.data),
      builder: (context, candidateData, rejectedData) {
        final isActive = candidateData.isNotEmpty;

        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isActive
                  ? primary
                  : (isDark
                        ? const Color(0xFF465A73)
                        : const Color(0xFF94A3B8)),
            ),
            color: isActive
                ? primary.withValues(alpha: 0.12)
                : Colors.transparent,
          ),
          child: Center(
            child: Text(
              'Drop task here',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: isDark
                    ? const Color(0xFFD1D5DB)
                    : const Color(0xFF334155),
              ),
            ),
          ),
        );
      },
    );
  }
}
