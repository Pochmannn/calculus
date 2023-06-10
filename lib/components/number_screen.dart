import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  final String screenNumber;

  const NumberScreen({
    super.key,
    required this.screenNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              screenNumber,
              style: const TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              screenNumber,
              style: const TextStyle(fontSize: 60, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
