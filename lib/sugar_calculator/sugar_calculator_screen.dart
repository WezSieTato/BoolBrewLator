import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'sugar_calculator_bloc.dart';

class SugarCalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SugarCalculatorBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Kalkulator cukru'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Oblicz, ile produktu musisz dodać, aby uzyskać X g cukru.'),
              ElevatedButton(
                onPressed: () {
                  context.read<SugarCalculatorBloc>().add(SugarCalculatorEvent.calculate);
                },
                child: Text('Oblicz'),
              ),
              BlocBuilder<SugarCalculatorBloc, double>(
                builder: (context, state) {
                  return Text('Wynik: ${state.toStringAsFixed(2)} ml');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
