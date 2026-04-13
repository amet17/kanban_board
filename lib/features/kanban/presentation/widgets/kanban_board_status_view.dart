import 'package:flutter/material.dart';

class KanbanBoardStatusView extends StatelessWidget {
  const KanbanBoardStatusView({
    super.key,
    required this.title,
    required this.subtitle,
    this.buttonLabel,
    this.onPressed,
  });

  final String title;
  final String subtitle;
  final String? buttonLabel;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 360),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: isDark
                      ? const Color(0xFFA8B3C5)
                      : const Color(0xFF334155),
                ),
              ),
              if (buttonLabel != null && onPressed != null) ...[
                const SizedBox(height: 20),
                FilledButton(onPressed: onPressed, child: Text(buttonLabel!)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
