import 'package:docdoc/Core/Theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hinttext;
  final InputBorder? focusedBorder;
  final InputBorder? enabeledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffexIcon;
  final EdgeInsetsGeometry? contentpadding;

  const AppTextFormField({
    super.key,
    required this.hinttext,
    this.focusedBorder,
    this.enabeledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.isObscureText,
    this.suffexIcon,
    this.contentpadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            contentpadding ??
            EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.w),
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.ligterGray),
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: hinttext,
        hintStyle: hintStyle,
        fillColor: AppColors.morelightGray,
        filled: true,
        suffixIcon: suffexIcon,
      ),
      obscureText: isObscureText ?? false,
    );
  }
}
