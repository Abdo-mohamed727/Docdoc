import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/features/login/Logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/Logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenCubit extends StatelessWidget {
  const LoginScreenCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failer,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            );
          },
          success: (loginResponce) {
            debugPrint('✅ Success reached: ${loginResponce.toString()}');

             Navigator.of(context, rootNavigator: true).pop();

            Navigator.pushReplacementNamed(context, AppRoutes.homepage);
          },
          error: (error) {
              Navigator.of(context, rootNavigator: true).pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const Placeholder(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Got it'),
          ),
        ],
      ),
    );
  }
}
