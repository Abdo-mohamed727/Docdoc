import 'package:docdoc/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(color: AppColors.gray),
          ),
          TextSpan(
            text: ' Terms & Conditions ',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          TextSpan(
            text: ' and \n ',
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(color: AppColors.gray),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
