import 'package:flutter/material.dart';
import 'sugar_calculator/sugar_calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
