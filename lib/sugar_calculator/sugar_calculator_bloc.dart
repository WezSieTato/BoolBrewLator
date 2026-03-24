import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

sealed class SugarCalculatorEvent extends Equatable {
  const SugarCalculatorEvent();

  @override
  List<Object> get props => [];
}

class CalculateSugarEvent extends SugarCalculatorEvent {
  final double sugarContent;
  final double targetSugar;

  const CalculateSugarEvent({
    required this.sugarContent,
    required this.targetSugar,
  });

  @override
  List<Object> get props => [sugarContent, targetSugar];
}

class ToggleUnitEvent extends SugarCalculatorEvent {
  final bool isLiquid;

  const ToggleUnitEvent({required this.isLiquid});

  @override
  List<Object> get props => [isLiquid];
}

class SugarCalculatorState extends Equatable {
  final double result;
  final bool isLiquid;

  const SugarCalculatorState({
    required this.result,
    required this.isLiquid,
  });

  @override
  List<Object> get props => [result, isLiquid];
}

class SugarCalculatorBloc extends Bloc<SugarCalculatorEvent, SugarCalculatorState> {
  SugarCalculatorBloc()
      : super(const SugarCalculatorState(result: 0, isLiquid: true)) {
    on<CalculateSugarEvent>(_onCalculateSugar);
    on<ToggleUnitEvent>(_onToggleUnit);
  }

  void _onCalculateSugar(
    CalculateSugarEvent event,
    Emitter<SugarCalculatorState> emit,
  ) {
    final result = (event.targetSugar * 100) / event.sugarContent;
    emit(SugarCalculatorState(result: result, isLiquid: state.isLiquid));
  }

  void _onToggleUnit(
    ToggleUnitEvent event,
    Emitter<SugarCalculatorState> emit,
  ) {
    emit(SugarCalculatorState(result: state.result, isLiquid: event.isLiquid));
  }
}
