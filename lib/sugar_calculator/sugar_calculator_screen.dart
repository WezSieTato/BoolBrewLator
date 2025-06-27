import 'package:boolbrewlator/sugar_calculator/sugar_calculator_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../i18n/translations.g.dart';
import '../design_system/design_system.dart';
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
        title: Text(context.t.app.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(Spacing.medium),
        child: BlocBuilder<SugarCalculatorBloc, SugarCalculatorState>(
          bloc: sugarCalculatorBloc,
          builder: (context, state) {
            String unit = state.isLiquid ? 'ml' : 'g';
            var translations = context.t.sugar_calculator.calculator;

            return SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: sugarContentController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: translations.sugar_per_100(unit: unit),
                      contentPadding: EdgeInsets.all(Spacing.small),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppBorderRadius.input),
                      ),
                    ),
                  ),
                  SizedBox(height: Spacing.small),
                  TextField(
                    controller: targetSugarController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: translations.target_sugar_amount,
                      contentPadding: EdgeInsets.all(Spacing.small),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppBorderRadius.input),
                      ),
                    ),
                  ),
                  SizedBox(height: Spacing.large),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        translations.solid,
                        style: AppTypography.bodyMedium,
                      ),
                      SizedBox(width: Spacing.small),
                      Switch(
                        value: state.isLiquid,
                        onChanged: toggleUnit,
                      ),
                      SizedBox(width: Spacing.small),
                      Text(
                        translations.liquid,
                        style: AppTypography.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: Spacing.large),
                  Text(
                    translations.result(
                      value: state.result.toStringAsFixed(2),
                      unit: unit,
                    ),
                    style: AppTypography.heading2.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(height: Spacing.large),
                  const SugarCalculatorInfo(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
