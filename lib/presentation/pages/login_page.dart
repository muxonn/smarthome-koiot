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
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "Smarthome",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Email"),
            ),
          ],
        ),
      ),
    );
  }
}
