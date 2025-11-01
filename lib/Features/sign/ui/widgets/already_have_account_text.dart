import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextSpan(
            text: ' LoginIn',
            recognizer: TapGestureRecognizer()..onTap=(){
              Navigator.of(context).pushReplacementNamed(AppRoutes.loginpage);
            },
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
