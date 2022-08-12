import 'package:flutter/material.dart';

class AppThem {
  static const Color primary = Colors.amber;
  static const Color blanco = Colors.white;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(backgroundColor: blanco, elevation: 0.3,
      iconTheme: IconThemeData(color: primary, size: 30),
      ),
       iconTheme: IconThemeData(color: primary, size: 30),
      
    );
}
