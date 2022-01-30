import 'package:flutter/material.dart';

extension customTheme on ThemeData {
  Color get buttonPrimary => const Color(0xffffffff) ;

  Color get buttonSecondary => const Color(0xffdbc0a4);

  // Color get ColorMenu => const Color(0xff604533);
  Color get colorMenu => const MaterialColor(0xff604533, const <int, Color> {
    50: const Color(0xff604533),
    100: const Color(0xff604533),
    200: const Color(0xff604533),
    300: const Color(0xff604533),
    400: const Color(0xff604533),
    500: const Color(0xff604533),
    600: const Color(0xff604533),
    700: const Color(0xff604533),
    800: const Color(0xff604533),
    900: const Color(0xff604533),
  });

  Color get colorHome => Colors.pink[600];

  Color get defaultText => const Color(0xff333333);

  Color get defaultColorContainer => Colors.white;
  
  Color get defaultSecondText => const Color(0xffffffff);

  double get textMedium24 => 24.0;

  double get textMedium16 => 16.0;

  double get textMedium14 => 14.0;

  double get textMedium12 => 12.0;

  double get textMedium10 => 10.0;

  double get minimumWidth => 100.0;

  double get minimumHeight => 32.0;

  double get defaultRoundedCorner => 10.0;

  
}

class CustomThemeData {
  BuildContext context;
  CustomThemeData(this.context);

  ThemeData get themeData {
    return ThemeData(
      primarySwatch: Theme.of(context).colorMenu,
      primaryColor: Theme.of(context).colorMenu,
      buttonTheme: ButtonThemeData(
        buttonColor: Theme.of(context).buttonPrimary,
      )
    );
  }
}