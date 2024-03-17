import 'package:flutter/material.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';
import 'package:smarthome_koiot/presentation/utils/elevated_button_theme.dart';
import 'package:smarthome_koiot/presentation/utils/input_decoration_theme.dart';
import 'package:smarthome_koiot/presentation/utils/text_button_theme.dart';
import 'package:smarthome_koiot/presentation/utils/text_theme.dart';

class SHAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: SHColors.white,
    textTheme: SHTextTheme.lightTextTheme,
    inputDecorationTheme: SHInputDecorationTheme.lightInputDecorationTheme,
    primaryColor: SHColors.black,
    textSelectionTheme: TextSelectionThemeData(cursorColor: SHColors.black),
    elevatedButtonTheme: SHElevatedButtonTheme.elevatedButtonTheme,
    textButtonTheme: SHTextButtonTheme.lightTextButtonTheme,
  );

  static ThemeData darkTheme = ThemeData();
}
