import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:boolbrewlator/sugar_calculator/sugar_calculator_bloc.dart';

void main() {
  group('SugarCalculatorBloc', () {
    blocTest<SugarCalculatorBloc, SugarCalculatorState>(
      'emits calculated result when CalculateSugarEvent is added',
      build: () => SugarCalculatorBloc(),
      act: (bloc) => bloc.add(
        CalculateSugarEvent(sugarContent: 5, targetSugar: 20),
      ),
      expect: () => [
        const SugarCalculatorState(result: 400, isLiquid: true),
      ],
    );

    blocTest<SugarCalculatorBloc, SugarCalculatorState>(
      'emits calculated result when CalculateSugarEvent is added with different values',
      build: () => SugarCalculatorBloc(),
      act: (bloc) => bloc.add(
        CalculateSugarEvent(sugarContent: 10, targetSugar: 30),
      ),
      expect: () => [
        const SugarCalculatorState(result: 300, isLiquid: true),
      ],
    );

    blocTest<SugarCalculatorBloc, SugarCalculatorState>(
      'emits toggled unit state when ToggleUnitEvent is added',
      build: () => SugarCalculatorBloc(),
      act: (bloc) => bloc.add(
        ToggleUnitEvent(isLiquid: false),
      ),
      expect: () => [
        const SugarCalculatorState(result: 0, isLiquid: false),
      ],
    );
  });
}
