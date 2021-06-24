import 'package:flutter/material.dart';

import '../core.dart';

mixin AppTextStyles {
  /// Headline 1 Text Style
  static const headline1 = TextStyle(
    color: AppColors.onPrimary,
    fontSize: 56,
    fontWeight: FontWeight.w500,
  );

  /// Headline 2 Text Style
  static const headline2 = TextStyle(
    color: Colors.redAccent,
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );

  /// Headline 3 Text Style
  static const headline3 = TextStyle(
    color: Colors.brown,
    fontSize: 24,
  );

  /// Headline 4 Text Style
  static const headline4 = TextStyle(
    color: Colors.orangeAccent,
    fontSize: 22,
  );

  /// Headline 5 Text Style
  static const headline5 = TextStyle(
    color: Colors.purple,
    fontSize: 22,
  );

  /// Headline 6 Text Style
  /// - AppBar
  static const headline6 = TextStyle(
    color: AppColors.onPrimary,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.075,
  );

  /// Subtitle 1 Text Style
  /// - TextField (Input text)
  static const subtitle1 = TextStyle(
    color: AppColors.onPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.09,
  );

  /// Subtitle 2 Text Style
  static const subtitle2 = TextStyle(
    color: Colors.green,
    fontSize: 14,
    letterSpacing: 0.07,
  );

  /// Body Text 1 Text Style
  static const bodyText1 = TextStyle(
    color: Colors.yellowAccent,
    fontSize: 16,
    letterSpacing: 0.31,
  );

  /// Body Text 2 Text Style (Default)
  static const bodyText2 = TextStyle(
    color: AppColors.onPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.18,
  );

  /// Caption Text Style
  /// - TextField (Label text)
  static const caption = TextStyle(
    color: AppColors.primary,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.33,
  );

  /// Overline Text Style
  static const overline = TextStyle(
    color: Colors.black,
    fontSize: 10,
    letterSpacing: 1.5,
  );

  /// Button Text Style
  /// - ElevatedButton
  static const button = TextStyle(
    color: AppColors.onPrimary,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.33,
  );
}
