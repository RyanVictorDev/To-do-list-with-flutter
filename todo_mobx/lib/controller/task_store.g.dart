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

  late final _$titleAtom = Atom(name: '_TaskStoreBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
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

  late final _$_TaskStoreBaseActionController =
      ActionController(name: '_TaskStoreBase', context: context);

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

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
  void toggleDone(int index) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.toggleDone');
    try {
      return super.toggleDone(index);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(int index) {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.removeTask');
    try {
      return super.removeTask(index);
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
title: ${title},
description: ${description},
forecast: ${forecast},
canSave: ${canSave}
    ''';
  }
}
