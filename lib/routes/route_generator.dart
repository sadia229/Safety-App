import 'package:flutter/material.dart';
import 'package:woman_safty_app/src/features/auth/login/view/login_page.dart';
import 'package:woman_safty_app/src/features/auth/otp/view/otp_page.dart';
import 'package:woman_safty_app/src/features/home/view/home_page.dart';
import 'package:woman_safty_app/src/features/signup/view/signup_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case '/otp':
        return MaterialPageRoute(
          builder: (_) => const OtpPage(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (_) => const SignupPage(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      // case '/mainScreen':
      //   return MaterialPageRoute(
      //     builder: (_) => const MainScreen(),
      //   );
      // case '/resetPassword':
      //   return MaterialPageRoute(
      //     builder: (_) => const ResetPasswordPage(),
      //   );
      // case '/confirmPassword':
      //   return MaterialPageRoute(
      //     builder: (_) => const ConfirmPasswordPage(),
      //   );
      // case '/notification':
      //   return MaterialPageRoute(
      //     builder: (_) => const NotificationPage(),
      //   );
      // case '/menCategories':
      //   return MaterialPageRoute(
      //     builder: (_) => const MenSection(),
      //   );
      // case '/productDetails':
      //   return MaterialPageRoute(
      //     builder: (_) => const ProductDetails(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }
}
