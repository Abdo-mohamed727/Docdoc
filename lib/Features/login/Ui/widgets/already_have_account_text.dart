import 'package:docdoc/Core/Theming/app_colors.dart';
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
            text: ' Sign Up',
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
