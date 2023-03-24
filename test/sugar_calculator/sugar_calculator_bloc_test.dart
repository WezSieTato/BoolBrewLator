import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:boolbrewlator/sugar_calculator/sugar_calculator_bloc.dart';

void main() {
  group('SugarCalculatorBloc', () {
    blocTest<SugarCalculatorBloc, double>(
      'emits calculated result when CalculateSugarEvent is added',
      build: () => SugarCalculatorBloc(),
      act: (bloc) => bloc.add(
        CalculateSugarEvent(sugarContent: 5, targetSugar: 20),
      ),
      expect: () => [400],
    );

    blocTest<SugarCalculatorBloc, double>(
      'emits calculated result when CalculateSugarEvent is added with different values',
      build: () => SugarCalculatorBloc(),
      act: (bloc) => bloc.add(
        CalculateSugarEvent(sugarContent: 10, targetSugar: 30),
      ),
      expect: () => [300],
    );
  });
}
