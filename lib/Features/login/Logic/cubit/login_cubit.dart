import 'package:docdoc/core/networking/api_results.dart';
import 'package:docdoc/features/login/Data/models/login_request_body.dart';
import 'package:docdoc/features/login/Data/repos/login_repo.dart';
import 'package:docdoc/features/login/Logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (LoginResponse) {
        emit(LoginState.success(LoginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.toString()));
      },
    );
  }
}
