class TaskItemModel {
  final String description;
  final DateTime forecast;
  bool isDone;

  TaskItemModel({
    required this.description,
    required this.forecast,
    this.isDone = false,
  });
}
