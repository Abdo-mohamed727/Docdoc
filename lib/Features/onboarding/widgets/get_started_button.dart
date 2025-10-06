import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Core/Theming/app_colors.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.loginpage);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(AppColors.primary),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,

          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
          ),
        ),
        child: Text(
          'Get Started',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
