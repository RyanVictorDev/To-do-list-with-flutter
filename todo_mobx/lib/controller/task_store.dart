import 'package:mobx/mobx.dart';

part 'task_store.g.dart';

class TaskStore = _TaskStoreBase with _$TaskStore;

abstract class _TaskStoreBase with Store {
  @observable
  ObservableList<String> tasks = ObservableList<String>();

  @observable
  String newTask = '';

  @computed
  bool get canAdd => newTask.trim().isNotEmpty;

  @action
  void setNewTask(String value) {
    newTask = value;
  }

  @action
  void addTask() {
    if (canAdd) {
      tasks.add(newTask.trim());
      newTask = '';
    }
  }

  @action
  void removeTask(int index) {
    tasks.removeAt(index);
  }
}
