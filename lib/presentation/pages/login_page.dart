import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarthome_koiot/presentation/utils/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/img/koiot-rotated.svg',
              width: 220,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              bottom: 30,
              left: 50,
              right: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 30),
                Wrap(
                  runSpacing: 10,
                  //TODO: Add forms logic
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(hintText: "Email"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(hintText: "Password"),
                      obscureText: true,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: double.infinity,
                  //TODO: Add login logic
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Log In",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: SHColors.lightGrey,
                        ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  //TODO: Add login logic
                  child: TextButton(
                    style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup-page');
                    },
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
                const Spacer(),
                //TODO: Add project info logic
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.info, color: SHColors.orange, size: 18),
                  label: Text(
                    "About project",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: SHColors.orange,
                        ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
