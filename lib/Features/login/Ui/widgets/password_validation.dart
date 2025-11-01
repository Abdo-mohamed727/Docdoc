import 'package:docdoc/core/helpers/spaces.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(context,
            'At least 1 lowercase letter',
           hasLowerCase,
        ),
        verticalSPaces(2),
        buildValidationRow(context,
            'At least 1 uppercase letter',
            hasUpperCase,
        ),
        verticalSPaces(2),
        buildValidationRow(context,
            'At least 1 special character',
            hasSpecialCharacters,
        ),
        verticalSPaces(2),
        buildValidationRow(context,
           'At least 1 number', 
            hasNumber),
        verticalSPaces(2),
        buildValidationRow(context,
            'At least 8 characters long',
            hasMinLength,
        ),
      ],
    );
  }
}

 Widget buildValidationRow( BuildContext context,String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.gray,
        ),
        horizontalSpaces(6),
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium!.
          copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? AppColors.gray : AppColors.primary,
          ),
        )
      ],
    );
  }

