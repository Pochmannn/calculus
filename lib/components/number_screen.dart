import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  final String screenNumber;
  final String screenNumber2;

  const NumberScreen({
    super.key,
    required this.screenNumber,
    required this.screenNumber2,
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
              screenNumber2,
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              screenNumber,
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
