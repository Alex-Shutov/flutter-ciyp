import 'package:flutter/material.dart';
import 'package:pocket/theme/i_theme_repository.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:pocket/utils/header_levels.dart';

class ThemeService {
  IThemeRepository _themeRepository;

  ThemeService(IThemeRepository themeRepository) : _themeRepository = themeRepository;

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.DarkPurple,
            textStyle: TextStyle(
              inherit: true,
              fontSize: 16,
              color: AppColors.DarkPurple,
              backgroundColor: Colors.transparent,
              wordSpacing: 0.0,
              decorationThickness: 1.0,
            ),
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateProperty.all(AppColors.White),
          fillColor: MaterialStateProperty.all(AppColors.DarkPurple),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13, horizontal: 16)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
            side: MaterialStateProperty.all(BorderSide(color: AppColors.Purple, width: 2)),
            foregroundColor: MaterialStateProperty.all(AppColors.Purple),
            backgroundColor: MaterialStateProperty.all(AppColors.White),
            textStyle: MaterialStateProperty.all(TextStyle(
              inherit: true,
              fontSize: 16,
              color: AppColors.Purple,
              backgroundColor: Colors.transparent,
              wordSpacing: 0.0,
              decorationThickness: 1.0,
            )),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(inherit: true, color: AppColors.DarkPurple),
          hintStyle: TextStyle(inherit: true, color: AppColors.MediumBlue),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide(width: 2, color: AppColors.MediumBlue, style: BorderStyle.solid),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide(width: 2, color: AppColors.DarkBlue, style: BorderStyle.solid),
          ),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            inherit: true,
            backgroundColor: Colors.transparent,
            color: AppColors.DarkPurple,
            fontSize: HeaderLevel.h1,
            fontWeight: FontWeight.w700,
            wordSpacing: 0.0,
            decorationThickness: 1.0,
          ),
          bodyMedium: TextStyle(
            inherit: true,
            color: AppColors.Purple,
            fontSize: 16,
            backgroundColor: Colors.transparent,
            wordSpacing: 0.0,
            decorationThickness: 1.0,
          ),
          bodySmall: TextStyle(
            
            inherit: true,
            color: AppColors.Pink,
            fontSize: 16,
            backgroundColor: AppColors.White,
            wordSpacing: 0.0,
            decorationThickness: 1.0,
          ),
          displayMedium: TextStyle(
            inherit: true,
            color: AppColors.Purple,
            fontSize: HeaderLevel.h3,
            fontWeight: FontWeight.w600,
            backgroundColor: Colors.transparent,
            wordSpacing: 0.0,
            decorationThickness: 1.0,
          ),
          displaySmall: TextStyle(
            inherit: true,
            color: AppColors.LightPurple,
            fontSize: HeaderLevel.h4,
            fontWeight: FontWeight.w500,
            backgroundColor: Colors.transparent,
            wordSpacing: 0.0,
            decorationThickness: 1.0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(
              inherit: true,
              color: AppColors.White,
              backgroundColor: Colors.transparent,
              wordSpacing: 0.0,
              decorationThickness: 1.0,
            )),
            backgroundColor: MaterialStateProperty.all(AppColors.MediumBlue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0))),
            minimumSize: MaterialStateProperty.all(const Size(100, 45)),
          ),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.MediumBlue),
          ),
        ),
      );

  Future<ThemeData> getTheme() async {
    var themeKey = await _themeRepository.getThemeKey();

    if (themeKey == null) {
      await _themeRepository.setThemeKey(lightTheme.brightness);

      return lightTheme;
    } else {
      return themeKey == "light" ? lightTheme : darkTheme;
    }
  }

  Future<ThemeData> toggleTheme(ThemeData theme) async {
    if (theme == lightTheme) {
      theme = darkTheme;
    } else {
      theme = lightTheme;
    }

    await _themeRepository.setThemeKey(theme.brightness);
    return theme;
  }
}
