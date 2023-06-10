import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const ActionButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Chip(
        padding: const EdgeInsets.all(5),
        label: Text(
          label,
          style: const TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.grey.shade600,
      ),
    );
  }
}
