import 'package:boolbrewlator/components/input_number_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'alcohol_dilution_calculator_cubit.dart';
import 'alcohol_dilution_calculator_state.dart';

class AlcoholDilutionCalculatorScreen extends StatelessWidget {
  const AlcoholDilutionCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlcoholDilutionCalculatorCubit(),
      child: _AlcoholDilutionCalculatorScreenBody(),
    );
  }
}

class _AlcoholDilutionCalculatorScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<AlcoholDilutionCalculatorCubit,AlcoholDilutionCalculatorState>(
          builder: (context, state) {
            return Column(
              children: [
                InputNumberField(
                  label: 'Początkowa zawartość alkoholu (%)',
                  onChanged: (value) {
                    final double? doubleValue = double.tryParse(value);
                    context
                        .read<AlcoholDilutionCalculatorCubit>()
                        .initialConcentrationChanged(doubleValue);
                  },
                ),
                InputNumberField(
                  label: 'Docelowa zawartość alkoholu (%)',
                  onChanged: (value) {
                    final double? doubleValue = double.tryParse(value);
                    context
                        .read<AlcoholDilutionCalculatorCubit>()
                        .targetConcentrationChanged(doubleValue);
                  },
                ),
                InputNumberField(
                  label: 'Docelowa ilość (ml)',
                  onChanged: (value) {
                    final double? doubleValue = double.tryParse(value);
                    context
                        .read<AlcoholDilutionCalculatorCubit>()
                        .solutionVolumeChanged(doubleValue);
                  },
                ),
                const SizedBox(height: 16),
                Text('Ilość alkoholu: ${state.requiredAlcoholVolume} ml'),
                Text('Ilość wody do dolania: ${state.requiredWaterVolume} ml'),
              ],
            );
          },
        ),
      ),
      // ),
    );
  }
}
