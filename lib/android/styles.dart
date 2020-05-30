import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = Colors.white;
const accentColor = const Color(0xFFFFFFFF);

ThemeData androidTheme() {
  return ThemeData(
    brightness: brightness,
    accentColor: accentColor,
  );

}