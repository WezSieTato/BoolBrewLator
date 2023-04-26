import 'package:flutter/material.dart';
import 'sugar_calculator/sugar_calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator cukru',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SugarCalculatorScreen(),
    );
  }
}
