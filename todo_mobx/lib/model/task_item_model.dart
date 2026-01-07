class TaskItemModel {
  final String title;
  final String description;
  final DateTime forecast;
  bool isDone;

  TaskItemModel({
    required this.title,
    required this.description,
    required this.forecast,
    this.isDone = false,
  });
}
