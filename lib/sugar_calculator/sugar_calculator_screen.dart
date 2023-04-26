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
        title: const Text('Kalkulator Cukru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<SugarCalculatorBloc, double>(
          bloc: sugarCalculatorBloc,
          builder: (context, state) {

            return Column(
              children: [
                TextField(
                  controller: sugarContentController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Cukier na 100 ml'),
                ),
                TextField(
                  controller: targetSugarController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Docelowa ilość cukru'),
                ),
                Text('Wynik: ${state.toStringAsFixed(2)} ml'),
              ],
            );
          },
        ),
      ),
    );
  }
}
