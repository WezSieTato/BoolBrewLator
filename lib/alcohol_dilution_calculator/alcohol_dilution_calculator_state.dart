import 'package:freezed_annotation/freezed_annotation.dart';

part 'alcohol_dilution_calculator_state.freezed.dart';

@freezed
class AlcoholDilutionCalculatorState with _$AlcoholDilutionCalculatorState {
  const factory AlcoholDilutionCalculatorState({
    required double initialConcentration,
    required double targetConcentration,
    required double solutionVolume,
    required double requiredWater,
    required double requiredAlcohol,
  }) = _AlcoholDilutionCalculatorState;
}
