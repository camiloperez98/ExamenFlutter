import 'package:flutter/material.dart';

class AppTheme{
  static Color primary = Colors.amberAccent.shade400;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey.shade300,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black)),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(8),
          topRight: Radius.circular(8))
        )
      )
  );
}