import 'package:boolbrewlator/sugar_calculator/sugar_calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('SugarCalculatorScreen visual test', (tester) async {
    await loadAppFonts();

    await tester.pumpWidget(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SugarCalculatorScreen(),
      ),
    );

      await multiScreenGolden(tester, 'sugar_calculator_screen');
  });
}
