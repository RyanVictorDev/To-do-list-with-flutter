import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/task_store.dart';
import '../widgets/task_item.dart';
import '../widgets/add_task_dialog.dart';

class TaskPage extends StatelessWidget {
  TaskPage({super.key});

  final TaskStore store = TaskStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Observer(
          builder: (_) => ListView.builder(
            itemCount: store.tasks.length,
            itemBuilder: (_, index) {
              final item = store.tasks[index];
              return TaskItem(
                item: item,
                onToggle: () => store.toggleDone(index),
                onDelete: () => store.removeTask(index),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AddTaskDialog(store: store),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
