import 'package:flutter_bloc/flutter_bloc.dart';
import 'alcohol_dilution_calculator_state.dart';

class AlcoholDilutionCalculatorCubit extends Cubit<AlcoholDilutionCalculatorState> {
  AlcoholDilutionCalculatorCubit() 
    : super(const AlcoholDilutionCalculatorState());

  void initialConcentrationChanged(double? initialConcentration) {
    if (initialConcentration != null) {
      final newState = state.copyWith(initialConcentration: initialConcentration);
      _recalculate(newState);
    }
  }

  void targetConcentrationChanged(double? targetConcentration) {
    if (targetConcentration != null) {
      final newState = state.copyWith(targetConcentration: targetConcentration);
      _recalculate(newState);
    }
  }

  void solutionVolumeChanged(double? solutionVolume) {
    if (solutionVolume != null) {
      final newState = state.copyWith(solutionVolume: solutionVolume);
      _recalculate(newState);
    }
  }

  void _recalculate(AlcoholDilutionCalculatorState newState) {
    const requiredWater = 410.0; // Twoje obliczenia dla potrzebnej wody tutaj, używając wartości z `newState`
    const requiredAlcohol = 420.0; // Twoje obliczenia dla potrzebnego alkoholu tutaj, używając wartości z `newState`

    emit(newState.copyWith(
      requiredWater: requiredWater,
      requiredAlcohol: requiredAlcohol
    ));
  }
}
