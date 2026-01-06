import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/task_store.dart';
import '../widgets/task_item.dart';

class TaskPage extends StatelessWidget {
  TaskPage({super.key});

  final TaskStore store = TaskStore();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Observer(
                builder: (_) => ListView.builder(
                  itemCount: store.tasks.length,
                  itemBuilder: (_, index) {
                    return TaskItem(
                      title: store.tasks[index],
                      onDelete: () => store.removeTask(index),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 8),

            Observer(
              builder: (_) => Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        hintText: 'Digite uma tarefa',
                      ),
                      onChanged: store.setNewTask,
                    ),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    mini: true,
                    onPressed: store.canAdd
                        ? () {
                            store.addTask();
                            controller.clear();
                          }
                        : null,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
