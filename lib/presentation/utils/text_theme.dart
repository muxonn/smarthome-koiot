import 'package:flutter/material.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class SHTextTheme {
  static final lightTextTheme = TextTheme(
    // Login/Signup page main headline
    headlineLarge: TextStyle(fontSize: 36, color: SHColors.black),
    headlineSmall: TextStyle(fontSize: 20, color: SHColors.black, fontWeight: FontWeight.bold),
    labelSmall: TextStyle(fontSize: 14, color: SHColors.darkGrey),
    bodyMedium: TextStyle(fontSize: 18, color: SHColors.black, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 18, color: SHColors.white, fontWeight: FontWeight.w500),
  );
}
