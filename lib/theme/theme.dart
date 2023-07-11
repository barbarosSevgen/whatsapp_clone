import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class AppTheme{
    ThemeData themeData() {
    return ThemeData(
      primarySwatch: Palette.primarySwatch,
      appBarTheme: appBarTheme(),
      floatingActionButtonTheme: floatingActionButtonTheme(),
    );
  }

    FloatingActionButtonThemeData floatingActionButtonTheme() {
      return const FloatingActionButtonThemeData(
      backgroundColor: Palette.primarySwatch,
    );
    }

  AppBarTheme appBarTheme() {
    return const AppBarTheme(
      elevation: 0.0,
      backgroundColor: Palette.primarySwatch,
    );
  }
}