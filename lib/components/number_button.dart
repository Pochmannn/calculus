import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const NumberButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
