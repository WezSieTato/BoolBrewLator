import 'package:flutter/material.dart';
import '../i18n/translations.g.dart';
import '../design_system/design_system.dart';

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
            style: AppTypography.heading3,
          ),
          SizedBox(height: Spacing.itemSpacing),
          Text(
            translations.description,
            style: AppTypography.bodyMedium,
          ),
          SizedBox(height: Spacing.sectionSpacing),
          Text(
            translations.brewers.title,
            style: AppTypography.heading3,
          ),
          SizedBox(height: Spacing.itemSpacing),
          Text(
            translations.description,
            style: AppTypography.bodyMedium,
          ),
          SizedBox(height: Spacing.sectionSpacing),
          Text(
            translations.winemakers.title,
            style: AppTypography.heading3,
          ),
          SizedBox(height: Spacing.itemSpacing),
          Text(
            translations.winemakers.description,
            style: AppTypography.bodyMedium,
          ),
        ],
      ),
    );
  }
}
