import 'package:docdoc/core/helpers/spaces.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/features/login/Ui/widgets/terms_and_conditions.dart';
import 'package:docdoc/features/sign/logic/cubit/sign_up_cubit.dart';
import 'package:docdoc/features/sign/logic/cubit/sign_up_state.dart';
import 'package:docdoc/features/sign/ui/widgets/already_have_account_text.dart';
import 'package:docdoc/features/sign/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signCubit = context.read<SignUpCubit>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(fontSize: 28, color: AppColors.black),
                ),
                verticalSPaces(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyle(fontSize: 14, color: AppColors.gray),
                ),
                verticalSPaces(36),
                Column(
                  children: [
                    const SignUpForm(),
                    verticalSPaces(40),
                    BlocListener<SignUpCubit, SignUpState>(
                      bloc: signCubit,
                      listenWhen: (previous, current) =>
                          current is SignUpLoading ||
                          current is SignUpSuccess ||
                          current is SignUpFailure,
                      listener: (context, state) {
                        if (state is SignUpLoading) {
                          CircularProgressIndicator.adaptive();
                        } else if (state is SignUpSuccess) {
                          Navigator.of(
                            context,
                          ).pushReplacementNamed(AppRoutes.homepage);
                        } else if (state is SignUpFailure) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.errorMessage)),
                          );
                        }
                      },
                      child: AppTextButton(
                        buttonText: "Create Account",
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        onPressed: () {
                          validateThenDoSignup(context);
                        },
                      ),
                    ),
                    verticalSPaces(16),
                    const TermsAndConditionsText(),
                    verticalSPaces(30),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpState();
    }
  }
}
