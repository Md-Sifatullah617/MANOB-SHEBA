import 'package:flutter/material.dart';

import '../core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get background => BoxDecoration(color: appTheme.gray100);

  // Fill decorations
  static BoxDecoration get fillWhiteA =>
      BoxDecoration(color: appTheme.whiteA70001);

  // Linear decorations
  static BoxDecoration get linear => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [theme.colorScheme.secondaryContainer, theme.colorScheme.onError],
    ),
  );

  // Neutral decorations
  static BoxDecoration get neutral100 => BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(color: appTheme.gray300, width: 1.11.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.gray60014,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get neutral100White =>
      BoxDecoration(border: Border.all(color: appTheme.gray300, width: 1.11.h));

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.1),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 17),
      ),
    ],
  );

  static BoxDecoration get outlineGray =>
      BoxDecoration(border: Border.all(color: appTheme.gray300, width: 1.h));

  static BoxDecoration get outlineGray300 => BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(color: appTheme.gray300, width: 1.h),
  );

  static BoxDecoration get outlineGray3001 => BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(color: appTheme.gray300, width: 1.11.h),
  );

  // Primary decorations
  static BoxDecoration get primary100 => BoxDecoration(color: appTheme.blue50);

  static BoxDecoration get primary50 =>
      BoxDecoration(color: theme.colorScheme.onErrorContainer);

  static BoxDecoration get primary500 =>
      BoxDecoration(color: theme.colorScheme.primary);

  // White decorations
  static BoxDecoration get white => BoxDecoration(color: appTheme.whiteA700);
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder40 => BorderRadius.circular(40.h);
  static BorderRadius get circleBorder44 => BorderRadius.circular(44.h);

  // Custom borders
  static BorderRadius get customBorderTL30 =>
      BorderRadius.vertical(top: Radius.circular(30.h));
  static BorderRadius get customBorderTL64 =>
      BorderRadius.only(topLeft: Radius.circular(64.h));

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(16.h);
  static BorderRadius get roundedBorder24 => BorderRadius.circular(24.h);
  static BorderRadius get roundedBorder3 => BorderRadius.circular(3.h);
  static BorderRadius get roundedBorder34 => BorderRadius.circular(34.h);
  static BorderRadius get roundedBorder50 => BorderRadius.circular(50.h);
  static BorderRadius get roundedBorder56 => BorderRadius.circular(56.h);
  static BorderRadius get roundedBorder8 => BorderRadius.circular(8.h);
  static BorderRadius get roundedBorder80 => BorderRadius.circular(80.h);
}
