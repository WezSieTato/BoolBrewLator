import 'package:bloc/bloc.dart';

// Define a new event
class CalculateSugarEvent {
  final double sugarContent;
  final double targetSugar;

  CalculateSugarEvent({required this.sugarContent, required this.targetSugar});
}

class SugarCalculatorBloc extends Bloc<CalculateSugarEvent, double> {
  SugarCalculatorBloc() : super(0) {
    on<CalculateSugarEvent>((event, emit) {
      final result = (event.targetSugar * 100) / event.sugarContent;
      emit(result);
    });
  }
}
