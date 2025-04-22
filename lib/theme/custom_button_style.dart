import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A Class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blue50,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray100,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
    backgroundColor: appTheme.whiteA700,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  // Outline button style
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: BorderSide(color: theme.colorScheme.primary, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    padding: EdgeInsets.zero,
  );

  // Text button style
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
    side: MaterialStateProperty.all<BorderSide>(
      BorderSide(color: Colors.transparent),
    ),
  );
}
