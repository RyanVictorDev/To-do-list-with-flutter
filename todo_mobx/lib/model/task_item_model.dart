class TaskItemModel {
  String description;
  DateTime forecast;
  bool isDone;

  TaskItemModel({
    required this.description,
    required this.forecast,
    this.isDone = false,
  });
}
