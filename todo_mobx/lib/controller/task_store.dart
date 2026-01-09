import 'package:mobx/mobx.dart';
import '../model/task_item_model.dart';

part 'task_store.g.dart';

enum TaskFilter {
  none,
  byForecast,     
  doneOnly,
}

class TaskStore = _TaskStoreBase with _$TaskStore;

abstract class _TaskStoreBase with Store {
  @observable
  ObservableList<TaskItemModel> tasks = ObservableList.of([]);

  @observable
  String description = '';

  @observable
  DateTime? forecast;

  @observable
  bool isForecastAsc = true;

  @observable
  TaskFilter activeFilter = TaskFilter.none;

  @computed
  bool get canSave =>
      description.trim().isNotEmpty && forecast != null;

  @computed
  List<TaskItemModel> get filteredTasks {
    final list = tasks.toList();

    switch (activeFilter) {
      case TaskFilter.byForecast:
        list.sort((a, b) => isForecastAsc
            ? a.forecast.compareTo(b.forecast)
            : b.forecast.compareTo(a.forecast));
        return list;

      case TaskFilter.doneOnly:
        return list.where((t) => t.isDone).toList();

      case TaskFilter.none:
      default:
        return list;
    }
  }

  @computed
  int get doneCount => tasks.where((t) => t.isDone).length;

  @computed
  int get remainingCount => tasks.where((t) => !t.isDone).length;

  @action
  void setDescription(String value) => description = value;

  @action
  void setForecast(DateTime date) => forecast = date;

  @action
  void setFilter(TaskFilter filter) {
    if (activeFilter == filter && filter == TaskFilter.byForecast) {
      isForecastAsc = !isForecastAsc;
    } else {
      activeFilter = filter;
      if (filter == TaskFilter.byForecast) {
        isForecastAsc = true;
      }
    }
  }

  @action
  void addTask() {
    if (!canSave) return;

    tasks.add(
      TaskItemModel(
        description: description.trim(),
        forecast: forecast!,
      ),
    );

    description = '';
    forecast = null;
  }

  @action
  void toggleDone(TaskItemModel task) {
    task.isDone = !task.isDone;
    tasks = ObservableList.of(tasks);
  }

  @action
  void removeTask(TaskItemModel task) {
    tasks.remove(task);
  }

  @action
  void editTask(
    TaskItemModel task, {
    required String newDescription,
    required DateTime newForecast,
  }) {
    task.description = newDescription;
    task.forecast = newForecast;
    tasks = ObservableList.of(tasks);
  }
}
