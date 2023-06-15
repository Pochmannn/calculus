import 'package:calculus/components/number_screen.dart';
import 'package:flutter/material.dart';
import 'constants/ui_constants.dart';
import 'components/number_button.dart';

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
  String screenNumber = '0';
  double calcNumber = 0;

  dynamic clickNumber(String textTile) {
    if (screenNumber == '0') {
      setState(() => screenNumber = textTile);
    } else {
      setState(
        () => screenNumber += textTile,
      );
      setState(() => calcNumber = double.parse(screenNumber));
    }
  }

  void resetNumber() {
    setState(() => screenNumber = '0');
  }

  divideNumber() {
    setState(
      () => calcNumber = calcNumber / 2,
    );
    setState(() => screenNumber = calcNumber as String);
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
                  onPressed: () => clickNumber('7'),
                  label: '7',
                ),
                NumberButton(
                  onPressed: () => clickNumber('8'),
                  label: '8',
                ),
                NumberButton(
                  onPressed: () => clickNumber('9'),
                  label: '9',
                ),
                NumberButton(
                  onPressed: () => divideNumber(),
                  label: '/',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                  onPressed: () => clickNumber('4'),
                  label: '4',
                ),
                NumberButton(
                  onPressed: () => clickNumber('5'),
                  label: '5',
                ),
                NumberButton(
                  onPressed: () => clickNumber('6'),
                  label: '6',
                ),
                NumberButton(
                  onPressed: () => resetNumber(),
                  label: '-',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                  onPressed: () => clickNumber('1'),
                  label: '1',
                ),
                NumberButton(
                  onPressed: () => clickNumber('2'),
                  label: '2',
                ),
                NumberButton(
                  onPressed: () => clickNumber('3'),
                  label: '3',
                ),
                NumberButton(
                  onPressed: () => resetNumber(),
                  label: '+',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                  onPressed: () => resetNumber(),
                  label: 'C',
                ),
                NumberButton(
                  onPressed: () => clickNumber('0'),
                  label: '0',
                ),
                NumberButton(
                  onPressed: () => clickNumber('.'),
                  label: '.',
                ),
                NumberButton(
                  onPressed: () => resetNumber(),
                  label: '=',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
