class TaskDragData {
  const TaskDragData({
    required this.taskId,
    required this.fromParentId,
    required this.fromIndex,
  });

  final int taskId;
  final int fromParentId;
  final int fromIndex;
}
