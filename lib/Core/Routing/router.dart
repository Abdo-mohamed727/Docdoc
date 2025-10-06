import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Features/login/Ui/Screens/login_screen.dart';
import 'package:docdoc/Features/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  // ignore: non_constant_identifier_names
  static Route<dynamic> OngenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
          settings: settings,
        );
      case AppRoutes.loginpage:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('no route found for${settings.name}')),
          ),
        );
    }
  }
}
