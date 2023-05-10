import 'package:boolbrewlator/sugar_calculator/sugar_calculator_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'sugar_calculator_bloc.dart';

class SugarCalculatorScreen extends StatefulWidget {
  const SugarCalculatorScreen({super.key});

  @override
  SugarCalculatorScreenState createState() => SugarCalculatorScreenState();
}

class SugarCalculatorScreenState extends State<SugarCalculatorScreen> {
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

  void toggleUnit(bool isLiquid) {
    sugarCalculatorBloc.add(ToggleUnitEvent(isLiquid: isLiquid));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Cukru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<SugarCalculatorBloc, SugarCalculatorState>(
          bloc: sugarCalculatorBloc,
          builder: (context, state) {
            String unit = state.isLiquid ? 'ml' : 'g';

            return Column(
              children: [
                TextField(
                  controller: sugarContentController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Cukier na 100 $unit'),
                ),
                TextField(
                  controller: targetSugarController,
                  keyboardType: TextInputType.number,
                  decoration:
                      const InputDecoration(labelText: 'Docelowa ilość cukru'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Stałe'),
                    Switch(
                      value: state.isLiquid,
                      onChanged: toggleUnit,
                    ),
                    const Text('Ciecz'),
                  ],
                ),
                Text('Wynik: ${state.result.toStringAsFixed(2)} $unit'),
                const SizedBox(height: 16.0),
                const SugarCalculatorInfo(),
              ],
            );
          },
        ),
      ),
    );
  }
}
