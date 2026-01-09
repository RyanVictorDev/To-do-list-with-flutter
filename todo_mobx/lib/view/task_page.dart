import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/task_store.dart';
import '../widgets/show_delete_dialog.dart';
import '../widgets/task_item.dart';
import '../widgets/add_task_dialog.dart';
import '../widgets/edit_task_dialog.dart';

class TaskPage extends StatelessWidget {
  TaskPage({super.key});

  final TaskStore store = TaskStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// CONTADOR
            Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('✅ ${store.doneCount} finalizadas'),
                  Text('⏳ ${store.remainingCount} pendentes'),
                ],
              ),
            ),

            const SizedBox(height: 8),

            /// FILTROS
            Observer(
              builder: (_) => Row(
                children: [
                  FilterChip(
                    label: const Text('Hoje'),
                    selected: store.activeFilter == TaskFilter.byDate,
                    onSelected: (_) =>
                        store.setFilter(TaskFilter.byDate),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Finalizadas'),
                    selected: store.activeFilter == TaskFilter.doneOnly,
                    onSelected: (_) =>
                        store.setFilter(TaskFilter.doneOnly),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Todas'),
                    selected: store.activeFilter == TaskFilter.none,
                    onSelected: (_) =>
                        store.setFilter(TaskFilter.none),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            /// LISTA
            Expanded(
              child: Observer(
                builder: (_) => ListView.builder(
                  itemCount: store.filteredTasks.length,
                  itemBuilder: (_, index) {
                    final item = store.filteredTasks[index];

                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => EditTaskDialog(
                            store: store,
                            task: item,
                          ),
                        );
                      },
                      child: TaskItem(
                        item: item,
                        onToggle: () => store.toggleDone(item),
                        onDelete: () => showDeleteDialog(
                          context,
                          () => store.removeTask(item),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
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
