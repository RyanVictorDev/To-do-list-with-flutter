import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/task_store.dart';

class AddTaskDialog extends StatelessWidget {
  final TaskStore store;

  const AddTaskDialog({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Nova Tarefa'),
      content: Observer(
        builder: (_) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
              onChanged: store.setTitle,
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Descrição',
              ),
              onChanged: store.setDescription,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Text(
                    store.forecast == null
                        ? 'Selecione uma data'
                        : 'Data: ${store.forecast!.toLocal().toString().split(' ')[0]}',
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                      initialDate: DateTime.now(),
                    );

                    if (date != null) {
                      store.setForecast(date);
                    }
                  },
                )
              ],
            ),
          ],
        ),
      ),
      actions: [
        Observer(
          builder: (_) => TextButton(
            onPressed: store.canSave
                ? () {
                    store.addTask();
                    Navigator.pop(context);
                  }
                : null,
            child: const Text('Salvar'),
          ),
        )
      ],
    );
  }
}
