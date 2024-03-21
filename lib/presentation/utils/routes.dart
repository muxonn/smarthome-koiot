import 'package:smarthome_koiot/presentation/pages/login_page.dart';
import 'package:smarthome_koiot/presentation/pages/signup_page.dart';

class SHRoutes {
  static final routes = {
    '/login-page': (context) => const LoginPage(),
    'signup-page': (context) => const SignupPage(),
  };
}
