import 'package:flutter/material.dart';

Future<void> showDeleteDialog(
  BuildContext context,
  VoidCallback onConfirm,
) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text('Remover tarefa'),
      content: const Text('Tem certeza que deseja remover esta tarefa?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.pop(context);
          },
          child: const Text(
            'Remover',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    ),
  );
}
