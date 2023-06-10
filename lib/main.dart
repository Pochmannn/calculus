import 'dart:developer';

import 'package:calculus/components/number_screen.dart';
import 'package:flutter/material.dart';
import 'constants/ui_constants.dart';
import 'components/number_button.dart';
import 'components/action_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculus(title: 'Flutter Demo Home Page'),
    );
  }
}

class Calculus extends StatefulWidget {
  const Calculus({super.key, required this.title});
  final String title;

  @override
  State<Calculus> createState() => _CalculusState();
}

class _CalculusState extends State<Calculus> {
  int firstNumber = 0;
  int secondNumber = 0;
  String screenNumber = '0';
  String text = '';

  onNumberClicked(String text) {
    //firstNumber = screenNumber as int;
    secondNumber = firstNumber;
    screenNumber = text;
    log(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey.shade900,
                    height: 150,
                    child: NumberScreen(
                      screenNumber: screenNumber,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    onPressed: onNumberClicked(text = '7'), label: '7'),
                NumberButton(
                    onPressed: onNumberClicked(text = '8'), label: '8'),
                NumberButton(
                    onPressed: onNumberClicked(text = '9'), label: '9'),
                ActionButton(
                    onPressed: onNumberClicked(text = 'X'), label: 'X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    onPressed: onNumberClicked(text = '4'), label: '4'),
                NumberButton(
                    onPressed: onNumberClicked(text = '5'), label: '5'),
                NumberButton(
                    onPressed: onNumberClicked(text = '6'), label: '6'),
                ActionButton(
                    onPressed: onNumberClicked(text = '-'), label: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    onPressed: onNumberClicked(text = '1'), label: '1'),
                NumberButton(
                    onPressed: onNumberClicked(text = '2'), label: '2'),
                NumberButton(
                    onPressed: onNumberClicked(text = '3'), label: '3'),
                ActionButton(
                    onPressed: onNumberClicked(text = '+'), label: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    onPressed: onNumberClicked(text = '±'), label: '±'),
                NumberButton(
                    onPressed: onNumberClicked(text = '0'), label: '0'),
                NumberButton(
                    onPressed: onNumberClicked(text = '.'), label: '.'),
                ActionButton(
                    onPressed: onNumberClicked(text = '='), label: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
