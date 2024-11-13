import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xFF5D9CEC);
  static const Color darkPrimaryColor = Color(0xFF200E32);
  static const Color scaffoldBgColor = Color(0xFFDFECDB);
  static const Color scaffoldDarkBgColor = Color(0xFF060E1E);
  static const Color greyColor = Color(0xFFC8C9CB);
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimaryColor,
      primary: lightPrimaryColor,
      onPrimary: Colors.white,
    ),
    useMaterial3: false,
    primaryColor: lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightPrimaryColor,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: scaffoldBgColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: lightPrimaryColor,
      unselectedItemColor: greyColor,
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: lightPrimaryColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, color: lightPrimaryColor, fontSize: 18),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimaryColor,
      primary: darkPrimaryColor,
      onPrimary: Colors.black,
    ),
    useMaterial3: false,
    primaryColor: darkPrimaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkPrimaryColor,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: scaffoldBgColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: darkPrimaryColor,
      unselectedItemColor: greyColor,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: darkPrimaryColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, color: darkPrimaryColor, fontSize: 18),
    ),
  );
}
