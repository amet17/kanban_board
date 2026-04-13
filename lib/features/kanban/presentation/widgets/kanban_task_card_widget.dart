import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../../domain/entities/kanban_task.dart';
import 'task_drag_data.dart';

class KanbanTaskCardWidget extends StatelessWidget {
  const KanbanTaskCardWidget({
    super.key,
    required this.task,
    required this.dragData,
    required this.isSaving,
    required this.isDragEnabled,
  });

  final KanbanTask task;
  final TaskDragData dragData;
  final bool isSaving;
  final bool isDragEnabled;

  @override
  Widget build(BuildContext context) {
    final cardChild = _CardBody(task: task, isSaving: isSaving);

    final draggableContent = _buildDraggable(cardChild);

    return MouseRegion(
      cursor: isDragEnabled ? SystemMouseCursors.grab : MouseCursor.defer,
      child: draggableContent,
    );
  }

  Widget _buildDraggable(Widget cardChild) {
    final feedback = Material(
      color: Colors.transparent,
      child: SizedBox(
        width: 280,
        child: _CardBody(task: task, isSaving: isSaving, isDragging: true),
      ),
    );

    final childWhenDragging = Opacity(opacity: 0.35, child: cardChild);

    final isDesktopLike =
        kIsWeb ||
        defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux;

    if (isDesktopLike) {
      return Draggable<TaskDragData>(
        data: dragData,
        maxSimultaneousDrags: isDragEnabled ? 1 : 0,
        feedback: feedback,
        childWhenDragging: childWhenDragging,
        child: cardChild,
      );
    }

    return LongPressDraggable<TaskDragData>(
      data: dragData,
      maxSimultaneousDrags: isDragEnabled ? 1 : 0,
      delay: const Duration(milliseconds: 150),
      feedback: feedback,
      childWhenDragging: childWhenDragging,
      child: cardChild,
    );
  }
}

class _CardBody extends StatelessWidget {
  const _CardBody({
    required this.task,
    required this.isSaving,
    this.isDragging = false,
  });

  final KanbanTask task;
  final bool isSaving;
  final bool isDragging;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      elevation: isDragging ? 8 : 0,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? const Color(0xFF1D2939)
                        : const Color(0xFFF1F5F9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Order ${task.order}',
                    style: TextStyle(
                      fontSize: 11,
                      color: isDark
                          ? const Color(0xFFA8B3C5)
                          : const Color(0xFF334155),
                    ),
                  ),
                ),
                const Spacer(),
                if (isSaving)
                  const SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
