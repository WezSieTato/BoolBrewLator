import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  void dispose() {
    sugarContentController.dispose();
    targetSugarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator cukru'),
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
            ElevatedButton(
              onPressed: () {
                double sugarContent = double.parse(sugarContentController.text);
                double targetSugar = double.parse(targetSugarController.text);

                final bloc = SugarCalculatorBloc(
                  sugarContent: sugarContent,
                  targetSugar: targetSugar,
                );
                bloc.add(SugarCalculatorEvent.calculate);

                // Przechwycenie wyniku
                bloc.stream.listen((calculatedResult) {
                  setState(() {
                    result = calculatedResult;
                  });
                });
              },
              child: Text('Oblicz'),
            ),
            if (result != null) Text('Wynik: ${result!.toStringAsFixed(2)} ml'),
          ],
        ),
      ),
    );
  }
}
