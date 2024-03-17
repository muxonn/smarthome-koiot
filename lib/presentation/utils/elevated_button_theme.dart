import 'package:flutter/material.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class SHElevatedButtonTheme {
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: SHColors.white,
      backgroundColor: SHColors.orange,
      padding: EdgeInsets.symmetric(vertical: 10),
    ),
  );
}
