import 'package:flutter/material.dart';
import '../controller/task_store.dart';
import '../model/task_item_model.dart';

class EditTaskDialog extends StatefulWidget {
  final TaskStore store;
  final TaskItemModel task;

  const EditTaskDialog({
    super.key,
    required this.store,
    required this.task,
  });

  @override
  State<EditTaskDialog> createState() => _EditTaskDialogState();
}

class _EditTaskDialogState extends State<EditTaskDialog> {
  late TextEditingController controller;
  late DateTime forecast;

  @override
  void initState() {
    controller = TextEditingController(text: widget.task.description);
    forecast = widget.task.forecast;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Editar tarefa'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Descrição'),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Data: ${forecast.toLocal().toString().split(' ')[0]}',
                ),
              ),
              IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                    initialDate: forecast,
                  );
                  if (date != null) {
                    setState(() => forecast = date);
                  }
                },
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            widget.store.editTask(
              widget.task,
              newDescription: controller.text,
              newForecast: forecast,
            );
            Navigator.pop(context);
          },
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
