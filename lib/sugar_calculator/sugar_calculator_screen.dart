import 'package:flutter/material.dart';
import 'sugar_calculator_bloc.dart';

class SugarCalculatorScreen extends StatefulWidget {
  @override
  _SugarCalculatorScreenState createState() => _SugarCalculatorScreenState();
}

class _SugarCalculatorScreenState extends State<SugarCalculatorScreen> {
  final TextEditingController sugarContentController = TextEditingController();
  final TextEditingController targetSugarController = TextEditingController();
  double? result;

  @override
  void initState() {
    super.initState();
    sugarContentController.addListener(calculate);
    targetSugarController.addListener(calculate);
  }

  @override
  void dispose() {
    sugarContentController.dispose();
    targetSugarController.dispose();
    super.dispose();
  }

  void calculate() {
    if (sugarContentController.text.isNotEmpty &&
        targetSugarController.text.isNotEmpty) {
      double sugarContent = double.parse(sugarContentController.text);
      double targetSugar = double.parse(targetSugarController.text);

      final bloc = SugarCalculatorBloc();
      bloc.add(
        CalculateSugarEvent(
          sugarContent: sugarContent,
          targetSugar: targetSugar,
        ),
      );

      // Capture the result
      bloc.stream.listen((calculatedResult) {
        setState(() {
          result = calculatedResult;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Cukru'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: sugarContentController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Cukier na 100 ml'),
            ),
            TextField(
              controller: targetSugarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Docelowa ilość cukru'),
            ),
            if (result != null)
              Text('Wynik: ${result!.toStringAsFixed(2)} ml'),
          ],
        ),
      ),
    );
  }
}
