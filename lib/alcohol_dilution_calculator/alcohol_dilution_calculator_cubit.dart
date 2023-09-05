import 'package:flutter/material.dart';
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
    double? initialConcentration = newState.initialConcentration;
    double? targetConcentration = newState.targetConcentration;
    double? solutionVolume = newState.solutionVolume;

    if (initialConcentration != null && targetConcentration != null && solutionVolume != null) {
      double initialAlcoholVolume = solutionVolume * (initialConcentration / 100);
      double targetAlcoholVolume = solutionVolume * (targetConcentration / 100);
      double contractionFactor = 1; // Przykładowa wartość, najlepiej ustalić właściwy współczynnik empirycznie lub z literatury

      // Zastosowanie współczynnika kontrakcji do obliczenia docelowej objętości
      double finalSolutionVolume = solutionVolume - (initialAlcoholVolume - targetAlcoholVolume) / contractionFactor;
      double requiredWaterVolume = finalSolutionVolume - solutionVolume;


      emit(newState.copyWith(
        requiredWaterVolume: requiredWaterVolume,
        requiredAlcoholVolume: targetAlcoholVolume,
      ));
    } else {
      emit(newState);
    }
  }

}
