import 'package:flutter/material.dart';

import '../core.dart';

mixin AppTheme {
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      colorScheme: _colorScheme,
      textTheme: _textTheme,
      iconTheme: _iconTheme,
      appBarTheme: _appBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
    );
  }

  static final _colorScheme = const ColorScheme.dark().copyWith(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
  );

  static final _textTheme = ThemeData.dark().textTheme.copyWith(
        headline1: AppTextStyles.headline1,
        headline2: AppTextStyles.headline2,
        headline3: AppTextStyles.headline3,
        headline4: AppTextStyles.headline4,
        headline5: AppTextStyles.headline5,
        headline6: AppTextStyles.headline6,
        subtitle1: AppTextStyles.subtitle1,
        subtitle2: AppTextStyles.subtitle2,
        bodyText1: AppTextStyles.bodyText1,
        bodyText2: AppTextStyles.bodyText2,
        caption: AppTextStyles.caption,
        overline: AppTextStyles.overline,
        button: AppTextStyles.button,
      );

  static const _iconTheme = IconThemeData(color: AppColors.primary);

  // https://material.io/components/app-bars-top#theming
  static final _appBarTheme = AppBarTheme(
    elevation: 4.0,
    iconTheme: _iconTheme,
    actionsIconTheme: _iconTheme,
    textTheme: _textTheme,
  );

  // https://material.io/components/buttons#theming
  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16.0),
      minimumSize: const Size(double.infinity, double.minPositive),
    ),
  );

  // https://material.io/components/text-fields#theming
  static const _inputDecorationTheme = InputDecorationTheme(
    border: InputBorder.none,
    floatingLabelBehavior: FloatingLabelBehavior.never,
  );
}
