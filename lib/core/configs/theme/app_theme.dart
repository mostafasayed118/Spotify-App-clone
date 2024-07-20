// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

class AppTheme {
  final double? height;
  AppTheme({
    this.height,
  });
  static final lightTheme = ThemeData(
    // primaryColor
    primaryColor: AppColors.primary,

    // scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.lightBackgroundAndWhite,

    // brightness
    brightness: Brightness.light,

    // fontFamily
    fontFamily: 'Satoshi',

    // textTheme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
    ),

    // elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size.fromHeight(70),
        elevation: 0,
      ),
    ),

    // inputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      focusColor: AppColors.primary,
      filled: true,
      fillColor: AppColors.transparent,
      contentPadding: const EdgeInsets.all(25),
      hintStyle: TextStyle(
        color: AppColors.black.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          color: AppColors.white,
          width: 0.5,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: AppColors.primary,
          )),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          color: AppColors.black,
          width: 0.5,
        ),
      ),
    ),
  );

// darkTheme
  static final darkTheme = ThemeData(
    // primaryColor
    primaryColor: AppColors.primary,

    // scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.darkBackground,

    // brightness
    brightness: Brightness.dark,

    // fontFamily
    fontFamily: 'Satoshi',

    // textTheme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.lightBackgroundAndWhite,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.lightBackgroundAndWhite,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.lightBackgroundAndWhite,
      ),
    ),

// elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size.fromHeight(70),
        elevation: 0,
      ),
    ),

    // inputDecorationTheme
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.transparent,
      contentPadding: EdgeInsets.all(30),
      hintStyle: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          color: AppColors.lightBackgroundAndWhite,
          width: 0.5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          color: AppColors.lightBackgroundAndWhite,
          width: 0.5,
        ),
      ),
    ),
  );
}
