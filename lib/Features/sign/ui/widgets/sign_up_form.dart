import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spaces.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/Ui/widgets/password_validation.dart';
import 'package:docdoc/features/sign/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
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
    final signCubit = context.read<SignUpCubit>();
    return Form(
      key: signCubit.formKey,
      child: Column(
        children: [
          AppTextFormField(
            hinttext: 'name',
            validation: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter a valid name';
              }
            },
            controller: signCubit.nameController,
          ),
          verticalSPaces(18),
          AppTextFormField(
            controller: signCubit.phoneController,
            hinttext: 'phone Number',
            validation: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please Enter a valid phone';
              }
            },
          ),
          verticalSPaces(18),
          AppTextFormField(
            controller: signCubit.emailController,
            hinttext: 'Email',
            validation: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please Enter a valid email';
              }
            },
          ),
          verticalSPaces(18),
          AppTextFormField(
            controller: signCubit.passwordController,
            hinttext: 'password',
            validation: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please Enter a valid password';
              }
            },
          ),
          verticalSPaces(18),

          AppTextFormField(
            controller: signCubit
                .passwordConfirmationController,
            hinttext: 'Password Confirmation',
            isObscureText: isPasswordConfirmationObscureText,
            suffexIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validation: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
            verticalSPaces(24),
          PasswordValidation(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
