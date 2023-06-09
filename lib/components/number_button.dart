import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  const NumberButton({
    super.key,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Chip(
        padding: const EdgeInsets.all(25),
        label: Text(
          label,
          style: const TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
}
