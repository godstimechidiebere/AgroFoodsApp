import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

/* -----LIST OF COLORS ---*/

const tPrimaryColor = Color(0xFFFFE400);
const tSecondaryColor = Color(0xFF272727);
const tAccentColor = Color(0xFF001BFF);

const tCardBgColor = Colors.green;//Color(0xFFF7F6F1);
const tWhiteColor = Color(0xffffffff);
const tDarkColor = Color(0xFF000000);

// ---ON BOARDING COLORS
const tOnBoardingPage1Color = Colors.green;
const tOnBoardingPage2Color = Color(0xfffddcdf);
const tOnBoardingPage3Color = Color(0xffffdcbd);

//the video watched constants
const textColor = Colors.black87;
const primaryColor = Color(0xffd1ad17);
const scaffoldbackgroundColor = Colors.transparent;



abstract class AppColors {
  static const secondary = Color(0xFF3B76F6);
  static const accent = Color(0xFFD6755B);
  static const textDark = Color(0xFF53585A);
  static const textLigth = Color(0xFFF5F5F5);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const cardLight = Color(0xFFF9FAFE);
  static const cardDark = Color(0xFF303334);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

abstract class _DarkColors {
  static const background = Color(0xFF1B1E1F);
  static const card = AppColors.cardDark;
}

/// Reference to the application theme.
class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  final darkBase = ThemeData.dark();
  final lightBase = ThemeData.light();

  /// Light theme and its settings.
  ThemeData get light => ThemeData(
    brightness: Brightness.light,
    visualDensity: visualDensity,
    textTheme:
    GoogleFonts.mulishTextTheme().apply(bodyColor: AppColors.textDark),
    appBarTheme: lightBase.appBarTheme.copyWith(
      iconTheme: lightBase.iconTheme,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color: AppColors.textDark,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    scaffoldBackgroundColor: _LightColors.background,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: AppColors.secondary),
    ),
    cardColor: _LightColors.card,
    primaryTextTheme: const TextTheme(
      headline6: TextStyle(color: AppColors.textDark),
    ),
    iconTheme: const IconThemeData(color: AppColors.iconDark), colorScheme: lightBase.colorScheme.copyWith(secondary: accentColor).copyWith(background: _LightColors.background),
  );

  /// Dark theme and its settings.
  ThemeData get dark => ThemeData(
    brightness: Brightness.dark,
    colorScheme: darkBase.colorScheme.copyWith(secondary: accentColor),
    visualDensity: visualDensity,
    textTheme:
    GoogleFonts.interTextTheme().apply(bodyColor: AppColors.textLigth),
    backgroundColor: _DarkColors.background,
    appBarTheme: darkBase.appBarTheme.copyWith(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    scaffoldBackgroundColor: _DarkColors.background,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: AppColors.secondary),
    ),
    cardColor: _DarkColors.card,
    primaryTextTheme: const TextTheme(
      headline6: TextStyle(color: AppColors.textLigth),
    ),
    iconTheme: const IconThemeData(color: AppColors.iconLight),
  );
}