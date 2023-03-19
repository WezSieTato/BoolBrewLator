import 'package:bloc/bloc.dart';

enum SugarCalculatorEvent { calculate }

class SugarCalculatorBloc extends Bloc<SugarCalculatorEvent, double> {
  SugarCalculatorBloc() : super(0);

  @override
  Stream<double> mapEventToState(SugarCalculatorEvent event) async* {
    switch (event) {
      case SugarCalculatorEvent.calculate:
        double sugarNeeded = 50; // Przykładowa wartość X
        double sugarPer100ml = 20; // Przykładowa wartość C
        double result = (sugarNeeded * 100) / sugarPer100ml;
        yield result;
        break;
    }
  }
}
