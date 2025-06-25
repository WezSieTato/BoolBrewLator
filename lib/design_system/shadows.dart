import 'package:flutter/material.dart';
import 'colors.dart';

class AppShadows {
  AppShadows._();

  // Shadow offsets
  static const Offset offsetNone = Offset.zero;
  static const Offset offsetSm = Offset(0, 1);
  static const Offset offsetMd = Offset(0, 2);
  static const Offset offsetLg = Offset(0, 4);
  static const Offset offsetXl = Offset(0, 8);
  static const Offset offsetXxl = Offset(0, 16);

  // Shadow blur radius
  static const double blurSm = 2.0;
  static const double blurMd = 4.0;
  static const double blurLg = 8.0;
  static const double blurXl = 16.0;
  static const double blurXxl = 32.0;

  // Shadow spread radius
  static const double spreadNone = 0.0;
  static const double spreadSm = 1.0;
  static const double spreadMd = 2.0;
  static const double spreadLg = 4.0;

  // Predefined shadows
  static const BoxShadow none = BoxShadow(
    color: Colors.transparent,
    offset: offsetNone,
    blurRadius: 0,
    spreadRadius: 0,
  );

  static const BoxShadow sm = BoxShadow(
    color: AppColors.shadowLight,
    offset: offsetSm,
    blurRadius: blurSm,
    spreadRadius: spreadNone,
  );

  static const BoxShadow md = BoxShadow(
    color: AppColors.shadow,
    offset: offsetMd,
    blurRadius: blurMd,
    spreadRadius: spreadSm,
  );

  static const BoxShadow lg = BoxShadow(
    color: AppColors.shadow,
    offset: offsetLg,
    blurRadius: blurLg,
    spreadRadius: spreadMd,
  );

  static const BoxShadow xl = BoxShadow(
    color: AppColors.shadow,
    offset: offsetXl,
    blurRadius: blurXl,
    spreadRadius: spreadLg,
  );

  static const BoxShadow xxl = BoxShadow(
    color: AppColors.shadow,
    offset: offsetXxl,
    blurRadius: blurXxl,
    spreadRadius: spreadLg,
  );

  // Specific shadows for common use cases
  static const List<BoxShadow> card = [sm];
  static const List<BoxShadow> elevated = [md];
  static const List<BoxShadow> modal = [xl];
  static const List<BoxShadow> floating = [lg];
}
