import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'sugar_calculator_bloc.dart';

class SugarCalculatorScreen extends StatefulWidget {
  const SugarCalculatorScreen({super.key});

  @override
  _SugarCalculatorScreenState createState() => _SugarCalculatorScreenState();
}

class _SugarCalculatorScreenState extends State<SugarCalculatorScreen> {
  final TextEditingController sugarContentController = TextEditingController();
  final TextEditingController targetSugarController = TextEditingController();
  double? result;
  late SugarCalculatorBloc sugarCalculatorBloc;

  @override
  void initState() {
    super.initState();
    sugarCalculatorBloc = SugarCalculatorBloc();
    sugarContentController.addListener(calculate);
    targetSugarController.addListener(calculate);
  }

  @override
  void dispose() {
    sugarContentController.dispose();
    targetSugarController.dispose();
    sugarCalculatorBloc.close();
    super.dispose();
  }

  void calculate() {
    if (sugarContentController.text.isNotEmpty &&
        targetSugarController.text.isNotEmpty) {
      double sugarContent = double.parse(sugarContentController.text);
      double targetSugar = double.parse(targetSugarController.text);

      sugarCalculatorBloc.add(
        CalculateSugarEvent(
          sugarContent: sugarContent,
          targetSugar: targetSugar,
        ),
      );
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
        child: BlocBuilder<SugarCalculatorBloc, double>(
          bloc: sugarCalculatorBloc,
          builder: (context, state) {
            if (state is double) {
              result = state;
            }

            return Column(
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
            );
          },
        ),
      ),
    );
  }
}
