import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  /// COLORS ARE JUST FOR DUMMY PURPOSES. APPLY ACTUAL COLOR FOR IN YOUR APP
  static Color lightBackgroundColor = const Color(0xfff9f7fb);
  static const lightPrimaryColor = Color(0xff015caf);
  static Color lightSecondaryColor = const Color(0xffff5011);
  static Color lightOnPrimaryColor = const Color(0xff819EBF);
  static Color lightOnPrimaryVariant = const Color(0xff2e8ce3);
  static Color lightAccentColor = Colors.blueGrey.shade200;

  static Color darkBackgroundColor = Colors.black;
  static Color bottomNavBarColor = const Color(0xff1F2029);

  static Color lightOnErrorColor = Colors.redAccent;
  static Color lightOnSecondary = Colors.redAccent;
  static Color lightErrorColor = Colors.redAccent;
  static Color lightOnBackground = const Color(0xffa0a0a0);

  static const lightSurfaceColor = Colors.green;
  static const lightOnSurfaceColor = Colors.green;
  static const lightInversePrimaryColor = Color(0xff7b7b7b);
  static const lightInverseSurfaceColor = Color(0xffefefef);

  const AppTheme._();

  /// FOR LIGHT THEME
  static final lightTheme = ThemeData(
    brightness: Brightness.light,

    /// PUT YOUR FONT FAMILY HERE
    fontFamily: 'Prompt',
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: lightPrimaryColor,
        onPrimary: lightOnPrimaryColor,
        primaryContainer: lightOnPrimaryVariant,
        secondary: lightSecondaryColor,
        onSecondary: lightOnSecondary,
        error: lightErrorColor,
        onError: lightOnErrorColor,
        background: lightBackgroundColor,
        onBackground: lightOnBackground,
        surface: lightSurfaceColor,
        onSurface: lightOnSurfaceColor,
        inversePrimary: lightInversePrimaryColor,
        inverseSurface: lightInverseSurfaceColor),
  );

  /// FOR DARK THEME
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,

    /// PUT YOUR FONT FAMILY HERE
    fontFamily: 'Prompt',

    /// DECLARE YOUR COLOR SCHEME HERE
    ///
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: darkBackgroundColor,
        onPrimary: darkBackgroundColor,
        primaryContainer: darkBackgroundColor,
        secondary: darkBackgroundColor,
        onSecondary: darkBackgroundColor,
        error: darkBackgroundColor,
        onError: darkBackgroundColor,
        background: darkBackgroundColor,
        onBackground: darkBackgroundColor,
        surface: darkBackgroundColor,
        onSurface: darkBackgroundColor,
        inversePrimary: darkBackgroundColor,
        inverseSurface: darkBackgroundColor),
  );

  /// OPTIONAL
  static Brightness get currentSystemBrightness =>
      WidgetsBinding.instance.platformDispatcher.platformBrightness;

  /// OPTIONAL
  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.dark,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.dark,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? darkBackgroundColor
            : darkBackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent));
  }

  /// SET YOUR TEXT THEME COLOR, SIZE, AND WEIGHT
  static textTheme(
      {double? fontSize, Color? fontColor, FontWeight? fontWeight}) {
    /// YOU CAN SET YOUR DEFAULT STYLES IN EACH OF YOUR TYPOGRAPHY
    return TextTheme(
      bodySmall: TextStyle(
        color: fontColor ?? lightPrimaryColor,
        fontSize: fontSize ?? 8.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: fontColor ?? lightPrimaryColor,
        fontSize: fontSize ?? 16.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      bodyLarge: TextStyle(
        color: fontColor ?? lightPrimaryColor,
        fontSize: fontSize ?? 32.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      headlineSmall: TextStyle(
        color: fontColor ?? lightPrimaryColor,
        fontSize: fontSize ?? 64.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      headlineMedium: TextStyle(
        color: fontColor ?? lightPrimaryColor,
        fontSize: fontSize ?? 128.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      headlineLarge: TextStyle(
        color: fontColor ?? lightPrimaryColor,
        fontSize: fontSize ?? 256.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
