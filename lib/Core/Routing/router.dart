import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/Features/login/Ui/Screens/login_screen.dart';
import 'package:docdoc/Features/onboarding/on_boarding_screen.dart';
import 'package:docdoc/features/home/home_screen.dart';
import 'package:docdoc/features/login/Logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
          settings: settings,
        );
         case AppRoutes.homepage:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
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
