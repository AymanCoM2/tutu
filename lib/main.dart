import 'package:flutter/material.dart';
import 'app_screens/first_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo Home Page')),
        body: FirstScreen(),
      ),
    ),
  );
}
