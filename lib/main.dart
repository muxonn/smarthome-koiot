import 'package:flutter/material.dart';
import 'package:smarthome_koiot/presentation/pages/login_page.dart';
import 'package:smarthome_koiot/presentation/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SHAppTheme.lightTheme,
      home: const LoginPage(),
    );
  }
}
