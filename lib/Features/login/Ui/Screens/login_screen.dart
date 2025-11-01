import 'package:docdoc/core/helpers/spaces.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/Features/login/Ui/widgets/already_have_account_text.dart';
import 'package:docdoc/Features/login/Ui/widgets/terms_and_conditions.dart';
import 'package:docdoc/features/login/Logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/Ui/widgets/email_and_password.dart';
import 'package:docdoc/features/login/Ui/widgets/login_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'Welcome Back',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'We\'re excited to have you back, can\'t wait to \n see what you\'ve been up to since you last \n logged in.',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: AppColors.gray),
                    ),
                  ],
                ),

                verticalSPaces(32),
                Column(
                  children: [
                    EmailAndPassword(),
                    verticalSPaces(16),

                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSPaces(32),
                AppTextButton(
                  buttonText: 'LoginIn',
                  textStyle: Theme.of(
                    context,
                  ).textTheme.titleMedium!.copyWith(color: AppColors.white),
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                verticalSPaces(18),
                TermsAndConditionsText(),

                verticalSPaces(60),
                AlreadyHaveAccountText(),
                LoginScreenCubit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
