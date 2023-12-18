import 'package:flutter/material.dart';
import 'package:dunno/core/app_export.dart';

class AppDecoration {
  // B decorations
  static BoxDecoration get bg => BoxDecoration(
        color: appTheme.gray100,
      );

  // Fill decorations
  static BoxDecoration get fillInverseSurface => BoxDecoration(
        color: theme.colorScheme.inverseSurface,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: appTheme.black900, //theme.colorScheme.primary,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200,
      );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, 0),
          end: const Alignment(1, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.gray90001,
          ],
        ),
      );
  static BoxDecoration get gradientTealToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, 0),
          end: const Alignment(1, 1),
          colors: [
            appTheme.teal300,
            appTheme.teal700,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray10002,
        border: Border.all(
          color: appTheme.gray10002,
          width: getHorizontalSize(1),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: getHorizontalSize(1),
        ),
      );

  // W decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        getHorizontalSize(15),
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        getHorizontalSize(24),
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        getHorizontalSize(30),
      );
  static BorderRadius get circleBorder45 => BorderRadius.circular(
        getHorizontalSize(45),
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        getHorizontalSize(65),
      );

  // Custom borders
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(40)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        getHorizontalSize(2),
      );
  static BorderRadius get roundedBorder42 => BorderRadius.circular(
        getHorizontalSize(42),
      );
  static BorderRadius get roundedBorder69 => BorderRadius.circular(
        getHorizontalSize(69),
      );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;


