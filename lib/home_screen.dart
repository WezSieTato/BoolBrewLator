import 'package:boolbrewlator/alcohol_dilution_calculator/alcohol_dilution_calculator_screen.dart';
import 'package:boolbrewlator/sugar_calculator/sugar_calculator_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class CalculatorItem {
  final String title;
  final Widget screen;

  const CalculatorItem({required this.title, required this.screen});
}

class _HomeScreenState extends State<HomeScreen> {

  final List<CalculatorItem> _calculatorItems = [
    const CalculatorItem(
      title: 'Rozcieńczanie alkoholu',
      screen: AlcoholDilutionCalculatorScreen(),
    ),
    const CalculatorItem(
      title: 'Kalkulator cukru',
      screen: SugarCalculatorScreen(),
    ),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_calculatorItems[_selectedIndex].title)),
      body: Center(
        child: _calculatorItems[_selectedIndex].screen,
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: _calculatorItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                _calculatorItems[index].title, 
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                ),
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
    );
  }
}