import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spaces.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/Logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/Ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setUpPasswordControllerListener();
  }

  void setUpPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,

            hinttext: 'Email',
            hintStyle: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: AppColors.gray),
            validation: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Enter email is valid';
              }
            },
          ),
          verticalSPaces(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,

            hinttext: 'Password',
            isObscureText: isObscureText,
            hintStyle: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: AppColors.gray),
            suffexIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validation: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter password is valid';
              }
            },
          ),
          verticalSPaces(16),
          PasswordValidation(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
