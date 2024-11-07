import 'dart:math';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal,
      child: Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    var luckyNumber = random.nextInt(100);
    return "Your lucky number is $luckyNumber";
  }
}
