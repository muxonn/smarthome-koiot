import 'package:flutter/material.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class SHInputDecorationTheme {
  static final lightInputDecorationTheme = InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: SHColors.lightGrey),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: SHColors.black),
    ),
    hintStyle: TextStyle(color: SHColors.lightGrey, fontSize: 16),
  );
}
