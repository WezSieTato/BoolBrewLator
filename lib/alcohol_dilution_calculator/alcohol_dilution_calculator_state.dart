import 'package:freezed_annotation/freezed_annotation.dart';

part 'alcohol_dilution_calculator_state.freezed.dart';

@freezed
class AlcoholDilutionCalculatorState with _$AlcoholDilutionCalculatorState {
  const factory AlcoholDilutionCalculatorState({
    double? initialConcentration,
    double? targetConcentration,
    double? solutionVolume,
    double? requiredWaterVolume,
    double? requiredAlcoholVolume,
  }) = _AlcoholDilutionCalculatorState;
}
