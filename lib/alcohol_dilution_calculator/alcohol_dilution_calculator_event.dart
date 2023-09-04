import 'package:freezed_annotation/freezed_annotation.dart';

part 'alcohol_dilution_calculator_event.freezed.dart';

@freezed
class AlcoholDilutionCalculatorEvent with _$AlcoholDilutionCalculatorEvent {
  const factory AlcoholDilutionCalculatorEvent.initialConcentrationChanged(
      double initialConcentration) = _InitialConcentrationChanged;
  const factory AlcoholDilutionCalculatorEvent.targetConcentrationChanged(
      double targetConcentration) = _TargetConcentrationChanged;
  const factory AlcoholDilutionCalculatorEvent.solutionVolumeChanged(
      double solutionVolume) = _SolutionVolumeChanged;
}
