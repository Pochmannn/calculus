import 'package:flutter/material.dart';

class NumberScreen extends StatefulWidget {
  final String screenNumber;

  const NumberScreen({
    super.key,
    required this.screenNumber,
  });

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.screenNumber,
              style: const TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.screenNumber,
              style: const TextStyle(fontSize: 60, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
