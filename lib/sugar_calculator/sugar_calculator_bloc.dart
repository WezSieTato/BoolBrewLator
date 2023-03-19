import 'package:bloc/bloc.dart';

enum SugarCalculatorEvent { calculate }

class SugarCalculatorBloc extends Bloc<SugarCalculatorEvent, double> {
  final double sugarContent;
  final double targetSugar;

  SugarCalculatorBloc({required this.sugarContent, required this.targetSugar})
      : super(0) {
    on<SugarCalculatorEvent>((event, emit) {
      if (event == SugarCalculatorEvent.calculate) {
        // Obliczenia
        final result = (targetSugar * 100) / sugarContent;
        emit(result);
      }
    });
  }
}
