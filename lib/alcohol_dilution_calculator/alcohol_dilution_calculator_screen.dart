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
        child: Column(
          children: [
            _buildTextField(
              context,
              label: 'Initial Concentration (%)',
              onChanged: (value) {
                final double? doubleValue = double.tryParse(value);
                context.read<AlcoholDilutionCalculatorCubit>().initialConcentrationChanged(doubleValue);
              },
            ),
            _buildTextField(
              context,
              label: 'Target Concentration (%)',
              onChanged: (value) {
                final double? doubleValue = double.tryParse(value);
                context.read<AlcoholDilutionCalculatorCubit>().targetConcentrationChanged(doubleValue);
              },
            ),
            _buildTextField(
              context,
              label: 'Solution Volume (ml)',
              onChanged: (value) {
                final double? doubleValue = double.tryParse(value);
                context.read<AlcoholDilutionCalculatorCubit>().solutionVolumeChanged(doubleValue);
              },
            ),
            const SizedBox(height: 16),
            BlocBuilder<AlcoholDilutionCalculatorCubit, AlcoholDilutionCalculatorState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text('Required Water: ${state.requiredWater} ml'),
                    Text('Required Alcohol: ${state.requiredAlcohol} ml'),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context, {required String label, required void Function(String) onChanged}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      onChanged: onChanged,
    );
  }
}
