import 'package:flutter/material.dart';
import '../i18n/translations.g.dart';

class SugarCalculatorInfo extends StatelessWidget {
  const SugarCalculatorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var translations = context.t.sugar_calculator.info;
    return Expanded(
      child: ListView(
        children: [
          Text(
            translations.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(translations.description),
          const SizedBox(height: 8.0),
          Text(
            translations.brewers.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(translations.description),
          const SizedBox(height: 8.0),
          Text(
            translations.winemakers.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(translations.winemakers.description),
        ],
      ),
    );
  }
}
