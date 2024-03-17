import 'package:flutter/material.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class SHTextButtonTheme {
  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: SHColors.white,
      disabledForegroundColor: SHColors.orange,
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );
}
