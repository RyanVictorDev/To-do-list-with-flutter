// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskStore on _TaskStoreBase, Store {
  Computed<bool>? _$canSaveComputed;

  @override
  bool get canSave => (_$canSaveComputed ??=
          Computed<bool>(() => super.canSave, name: '_TaskStoreBase.canSave'))
      .value;
  Computed<List<TaskItemModel>>? _$filteredTasksComputed;

  @override
  List<TaskItemModel> get filteredTasks => (_$filteredTasksComputed ??=
          Computed<List<TaskItemModel>>(() => super.filteredTasks,
              name: '_TaskStoreBase.filteredTasks'))
      .value;
  Computed<int>? _$doneCountComputed;

  @override
  int get doneCount =>
      (_$doneCountComputed ??= Computed<int>(() => super.doneCount,
              name: '_TaskStoreBase.doneCount'))
          .value;
  Computed<int>? _$remainingCountComputed;

  @override
  int get remainingCount =>
      (_$remainingCountComputed ??= Computed<int>(() => super.remainingCount,
              name: '_TaskStoreBase.remainingCount'))
          .value;

  late final _$tasksAtom = Atom(name: '_TaskStoreBase.tasks', context: context);

  @override
  ObservableList<TaskItemModel> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<TaskItemModel> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_TaskStoreBase.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$forecastAtom =
      Atom(name: '_TaskStoreBase.forecast', context: context);

  @override
  DateTime? get forecast {
    _$forecastAtom.reportRead();
    return super.forecast;
  }

  @override
  set forecast(DateTime? value) {
    _$forecastAtom.reportWrite(value, super.forecast, () {
      super.forecast = value;
    });
  }

  late final _$isForecastAscAtom =
      Atom(name: '_TaskStoreBase.isForecastAsc', context: context);

  @override
  bool get isForecastAsc {
    _$isForecastAscAtom.reportRead();
    return super.isForecastAsc;
  }

  @override
  set isForecastAsc(bool value) {
    _$isForecastAscAtom.reportWrite(value, super.isForecastAsc, () {
      super.isForecastAsc = value;
    });
  }

  late final _$activeFilterAtom =
      Atom(name: '_TaskStoreBase.activeFilter', context: context);

  @override
  TaskFilter get activeFilter {
    _$activeFilterAtom.reportRead();
    return super.activeFilter;
  }

  @override
  set activeFilter(TaskFilter value) {
    _$activeFilterAtom.reportWrite(value, super.activeFilter, () {
      super.activeFilter = value;
    });
  }

  late final _$_TaskStoreBaseActionController =
      ActionController(name: '_TaskStoreBase', context: context);

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setForecast(DateTime date) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.setForecast');
    try {
      return super.setForecast(date);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFilter(TaskFilter filter) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.setFilter');
    try {
      return super.setFilter(filter);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTask() {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.addTask');
    try {
      return super.addTask();
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleDone(TaskItemModel task) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.toggleDone');
    try {
      return super.toggleDone(task);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(TaskItemModel task) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.removeTask');
    try {
      return super.removeTask(task);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editTask(TaskItemModel task,
      {required String newDescription, required DateTime newForecast}) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.editTask');
    try {
      return super.editTask(task,
          newDescription: newDescription, newForecast: newForecast);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
description: ${description},
forecast: ${forecast},
isForecastAsc: ${isForecastAsc},
activeFilter: ${activeFilter},
canSave: ${canSave},
filteredTasks: ${filteredTasks},
doneCount: ${doneCount},
remainingCount: ${remainingCount}
    ''';
  }
}
