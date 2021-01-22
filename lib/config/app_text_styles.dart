import 'package:flutter/material.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///
class AppTextStyle {
  static TextStyle normal30Yellow = TextStyle(
    fontSize: 30,
    color: Colors.yellow[800],
  );

  static TextStyle normal20Yellow = TextStyle(
    fontSize: 20,
    color: Colors.yellow[800],
  );

  static TextStyle bold16White = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
