import 'package:flutter/material.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: const Text(
        'CASIO',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.blueGrey,
      centerTitle: true,
    );
  }
}
