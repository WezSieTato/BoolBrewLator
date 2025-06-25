class Spacing {
  Spacing._();

  // Base spacing unit (8px)
  static const double _baseUnit = 8.0;

  // Extra small spacing
  static const double xs = _baseUnit * 0.5; // 4px
  static const double sm = _baseUnit; // 8px
  static const double md = _baseUnit * 1.5; // 12px
  static const double lg = _baseUnit * 2; // 16px
  static const double xl = _baseUnit * 3; // 24px
  static const double xxl = _baseUnit * 4; // 32px
  static const double xxxl = _baseUnit * 6; // 48px

  // Specific spacing for common use cases
  static const double screenPadding = lg; // 16px
  static const double cardPadding = md; // 12px
  static const double buttonPadding = sm; // 8px
  static const double inputPadding = sm; // 8px
  static const double sectionSpacing = xl; // 24px
  static const double itemSpacing = md; // 12px
  static const double iconSpacing = xs; // 4px
}
