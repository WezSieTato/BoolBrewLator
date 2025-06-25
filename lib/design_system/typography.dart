import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  // Font families
  static const String fontFamily = 'Roboto';

  // Font weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Font sizes
  static const double fontSizeXs = 10.0;
  static const double fontSizeSm = 12.0;
  static const double fontSizeMd = 14.0;
  static const double fontSizeLg = 16.0;
  static const double fontSizeXl = 18.0;
  static const double fontSizeXxl = 20.0;
  static const double fontSizeXxxl = 24.0;
  static const double fontSizeDisplay = 32.0;

  // Text styles
  static const TextStyle display = TextStyle(
    fontSize: fontSizeDisplay,
    fontWeight: bold,
    fontFamily: fontFamily,
  );

  static const TextStyle heading1 = TextStyle(
    fontSize: fontSizeXxxl,
    fontWeight: bold,
    fontFamily: fontFamily,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: fontSizeXxl,
    fontWeight: semiBold,
    fontFamily: fontFamily,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: fontSizeXl,
    fontWeight: medium,
    fontFamily: fontFamily,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: fontSizeLg,
    fontWeight: regular,
    fontFamily: fontFamily,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: fontSizeMd,
    fontWeight: regular,
    fontFamily: fontFamily,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: fontSizeSm,
    fontWeight: regular,
    fontFamily: fontFamily,
  );

  static const TextStyle caption = TextStyle(
    fontSize: fontSizeXs,
    fontWeight: regular,
    fontFamily: fontFamily,
  );

  static const TextStyle label = TextStyle(
    fontSize: fontSizeSm,
    fontWeight: medium,
    fontFamily: fontFamily,
  );

  static const TextStyle button = TextStyle(
    fontSize: fontSizeMd,
    fontWeight: medium,
    fontFamily: fontFamily,
  );
}
