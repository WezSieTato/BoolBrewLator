import 'package:equatable/equatable.dart';

class AlcoholDilutionCalculatorState extends Equatable {
  final double? initialConcentration;
  final double? targetConcentration;
  final double? solutionVolume;
  final double? requiredWaterVolume;
  final double? requiredAlcoholVolume;

  const AlcoholDilutionCalculatorState({
    this.initialConcentration,
    this.targetConcentration,
    this.solutionVolume,
    this.requiredWaterVolume,
    this.requiredAlcoholVolume,
  });

  AlcoholDilutionCalculatorState copyWith({
    double? initialConcentration,
    double? targetConcentration,
    double? solutionVolume,
    double? requiredWaterVolume,
    double? requiredAlcoholVolume,
  }) {
    return AlcoholDilutionCalculatorState(
      initialConcentration: initialConcentration ?? this.initialConcentration,
      targetConcentration: targetConcentration ?? this.targetConcentration,
      solutionVolume: solutionVolume ?? this.solutionVolume,
      requiredWaterVolume: requiredWaterVolume ?? this.requiredWaterVolume,
      requiredAlcoholVolume: requiredAlcoholVolume ?? this.requiredAlcoholVolume,
    );
  }

  @override
  List<Object?> get props => [
        initialConcentration,
        targetConcentration,
        solutionVolume,
        requiredWaterVolume,
        requiredAlcoholVolume,
      ];
}
