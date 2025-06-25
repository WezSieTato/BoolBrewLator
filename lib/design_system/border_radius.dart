class AppBorderRadius {
  AppBorderRadius._();

  // Base radius unit (4px)
  static const double _baseUnit = 4.0;

  // Border radius values
  static const double none = 0.0;
  static const double xs = _baseUnit * 0.5; // 2px
  static const double sm = _baseUnit; // 4px
  static const double md = _baseUnit * 1.5; // 6px
  static const double lg = _baseUnit * 2; // 8px
  static const double xl = _baseUnit * 3; // 12px
  static const double xxl = _baseUnit * 4; // 16px
  static const double xxxl = _baseUnit * 6; // 24px
  static const double full = 9999.0; // Fully rounded

  // Specific border radius for common use cases
  static const double button = md; // 6px
  static const double card = lg; // 8px
  static const double input = sm; // 4px
  static const double chip = full; // Fully rounded
  static const double avatar = full; // Fully rounded
  static const double modal = xl; // 12px
} 