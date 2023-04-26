import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

class CalculateSugarEvent {
  final double sugarContent;
  final double targetSugar;

  CalculateSugarEvent({required this.sugarContent, required this.targetSugar});
}

class ToggleUnitEvent {
  final bool isLiquid;

  ToggleUnitEvent({required this.isLiquid});
}

class SugarCalculatorState extends Equatable {
  final double result;
  final bool isLiquid;

  const SugarCalculatorState({required this.result, required this.isLiquid});

  @override
  List<Object> get props => [result, isLiquid];
}

class SugarCalculatorBloc extends Bloc<dynamic, SugarCalculatorState> {
  SugarCalculatorBloc()
      : super(SugarCalculatorState(result: 0, isLiquid: true)) {
    on<CalculateSugarEvent>((event, emit) {
      final result = (event.targetSugar * 100) / event.sugarContent;
      emit(SugarCalculatorState(result: result, isLiquid: state.isLiquid));
    });

    on<ToggleUnitEvent>((event, emit) {
      emit(SugarCalculatorState(result: state.result, isLiquid: event.isLiquid));
    });
  }
}
