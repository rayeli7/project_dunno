// ignore: unnecessary_import
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  final _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: colorScheme.primary,
              width: 1,
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: const BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray10002,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            64,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w800,
        ),
        displayMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            40,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            30,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w800,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            26,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF363636),
    primaryContainer: Color(0XFFBCBCBC),
    secondary: Color(0XFFBCBCBC),
    secondaryContainer: Color(0XFFFF0000),
    tertiary: Color(0XFFBCBCBC),
    tertiaryContainer: Color(0XFFFF0000),

    // Background colors
    background: Color(0XFFBCBCBC),

    // Surface colors
    surface: Color(0XFFBCBCBC),
    surfaceTint: Color(0XFFFFFFFF),
    surfaceVariant: Color(0XFFFF0000),

    // Error colors
    error: Color(0XFFFFFFFF),
    errorContainer: Color(0XFF4B4B4B),
    onError: Color(0XFF8B00F7),
    onErrorContainer: Color(0XFFFFFFFF),

    // On colors(text colors)
    onBackground: Color(0XFF250DFD),
    onInverseSurface: Color(0XFF8B00F7),
    onPrimary: Color(0XFFFFFFFF),
    onPrimaryContainer: Color(0XFF250DFD),
    onSecondary: Color(0XFF250DFD),
    onSecondaryContainer: Color(0XFFFFFFFF),
    onTertiary: Color(0XFF250DFD),
    onTertiaryContainer: Color(0XFFFFFFFF),

    // Other colors
    outline: Color(0XFFFFFFFF),
    outlineVariant: Color(0XFFBCBCBC),
    scrim: Color(0XFFBCBCBC),
    shadow: Color(0XFFFFFFFF),

    // Inverse colors
    inversePrimary: Color(0XFFBCBCBC),
    inverseSurface: Color(0XFFFFFFFF),

    // Pending colors
    onSurface: Color(0XFF250DFD),
    onSurfaceVariant: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber600 => const Color(0XFFFFB905);
  Color get amberA400 => const Color(0XFFFFC900);

  // Black
  Color get black900 => const Color(0XFF000000);

  // Blackf
  Color get black9003f => const Color(0X3F000000);

  // BlueGray
  Color get blueGray100 => const Color(0XFFCACCD2);
  Color get blueGray10001 => const Color(0XFFD7D7D7);
  Color get blueGray10002 => const Color(0XFFD0D2D7);
  Color get blueGray10003 => const Color(0XFFD0D1D6);
  Color get blueGray400 => const Color(0XFF888888);
  Color get blueGray60014 => const Color(0X14545E7A);
  Color get blueGray700 => const Color(0XFF4B5060);
  Color get blueGray70001 => const Color(0XFF4A505F);
  Color get blueGray900 => const Color(0XFF333333);

  // DeepOrange
  Color get deepOrange400 => const Color(0XFFF66E46);
  Color get deepOrangeA700 => const Color(0XFFE72F00);

  // Gray
  Color get gray100 => const Color(0XFFF3F4EF);
  Color get gray10001 => const Color(0XFFF4F4F4);
  Color get gray10002 => const Color(0XFFF5F5F5);
  Color get gray200 => const Color(0XFFF2EAEA);
  Color get gray300 => const Color(0XFFE6E6E6);
  Color get gray30001 => const Color(0XFFE3E3E1);
  Color get gray50 => const Color(0XFFF8F8F8);
  Color get gray500 => const Color(0XFFA7A8AA);
  Color get gray50001 => const Color(0XFFA8A8AA);
  Color get gray600 => const Color(0XFF7B7B7B);
  Color get gray700 => const Color(0XFF616471);
  Color get gray900 => const Color(0XFF071232);
  Color get gray90001 => const Color(0XFF121111);

  // Grayf
  Color get gray2003f => const Color(0X3FE8E8E8);

  // Green
  Color get greenA700 => const Color(0XFF00D259);
  Color get greenA70001 => const Color(0XFF00D258);

  // Indigo
  Color get indigo50 => const Color(0XFFEBEAFD);

  // LightGreen
  Color get lightGreenA700 => const Color(0XFF73AF00);

  // Lime
  Color get lime50 => const Color(0XFFFDF9EA);

  // Purple
  Color get purple50 => const Color(0XFFFDEAFC);
  Color get purpleA200 => const Color(0XFFF04DF0);

  // Red
  Color get red50 => const Color(0XFFFDEAEB);
  Color get red500 => const Color(0XFFFF364A);
  Color get red50001 => const Color(0XFFEA4335);
  Color get red5001 => const Color(0XFFFDEEEA);
  Color get red600 => const Color(0XFFE6273E);
  Color get redA200 => const Color(0XFFFF4B55);
  Color get redA700 => const Color(0XFFF00000);

  // Teal
  Color get teal300 => const Color(0XFF4CA6A8);
  Color get teal50 => const Color(0XFFE4F3F4);
  Color get teal700 => const Color(0XFF007274);
  Color get tealA400 => const Color(0XFF00F7BD);
  Color get tealA700 => const Color(0XFF04D79A);

  // Yellow
  Color get yellow400 => const Color(0XFFFFE15A);
  Color get yellowA400 => const Color(0XFFF7EE00);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
