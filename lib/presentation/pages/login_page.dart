import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 50,
        ),
        child: Column(
          children: [
            Wrap(
              runSpacing: -5,
              children: [
                Text(
                  "Welcome home,",
                  style: TextStyle(
                      fontSize: 36,
                      color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Smarthome",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                focusColor: Colors.red,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              cursorColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
