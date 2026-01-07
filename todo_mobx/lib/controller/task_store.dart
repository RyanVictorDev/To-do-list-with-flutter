import 'package:mobx/mobx.dart';
import '../model/task_item_model.dart';

part 'task_store.g.dart';

class TaskStore = _TaskStoreBase with _$TaskStore;

abstract class _TaskStoreBase with Store {
  @observable
  ObservableList<TaskItemModel> tasks = ObservableList<TaskItemModel>();

  @observable
  String title = '';

  @observable
  String description = '';

  @observable
  DateTime? forecast;

  @computed
  bool get canSave =>
      title.trim().isNotEmpty && description.trim().isNotEmpty && forecast != null;

  @action
  void setTitle(String value) {
    title = value;
  }

  @action
  void setDescription(String value) {
    description = value;
  }

  @action
  void setForecast(DateTime date) {
    forecast = date;
  }

  @action
  void addTask() {
    if (!canSave) return;

    tasks.add(
      TaskItemModel(
        title: title.trim(),
        description: description.trim(),
        forecast: forecast!,
      ),
    );

    title = '';
    description = '';
    forecast = null;
  }

  @action
  void toggleDone(int index) {
    tasks[index].isDone = !tasks[index].isDone;
    tasks = ObservableList.of(tasks); // força reação
  }

  @action
  void removeTask(int index) {
    tasks.removeAt(index);
  }
}
