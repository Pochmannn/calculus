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

  void onNumberClicked() {}

  @override
  State<Calculus> createState() => _CalculusState();
}

class _CalculusState extends State<Calculus> {
  int firstNumber = 0;
  int secondNumber = 0;

  void onNumberClicked() {
    firstNumber = 7;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UIConstants.appBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 10, color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10)),
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
                          screenNumber: '0',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButton(onTap: onNumberClicked, label: '7'),
                    NumberButton(onTap: onNumberClicked, label: '8'),
                    NumberButton(onTap: onNumberClicked, label: '9'),
                    ActionButton(onTap: onNumberClicked, label: 'X'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButton(onTap: onNumberClicked, label: '4'),
                    NumberButton(onTap: onNumberClicked, label: '5'),
                    NumberButton(onTap: onNumberClicked, label: '6'),
                    ActionButton(onTap: onNumberClicked, label: '-'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButton(onTap: onNumberClicked, label: '1'),
                    NumberButton(onTap: onNumberClicked, label: '2'),
                    NumberButton(onTap: onNumberClicked, label: '3'),
                    ActionButton(onTap: onNumberClicked, label: '+'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButton(onTap: onNumberClicked, label: '±'),
                    NumberButton(onTap: onNumberClicked, label: '0'),
                    NumberButton(onTap: onNumberClicked, label: '.'),
                    ActionButton(onTap: onNumberClicked, label: '='),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
