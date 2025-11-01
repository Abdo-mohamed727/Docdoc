import 'package:docdoc/core/networking/api_results.dart';
import 'package:docdoc/features/sign/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign/data/sign_up_repo.dart';
import 'package:docdoc/features/sign/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(SignUpState.signuploading());
    final response = await _signUpRepo.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signUpResponse) =>
          emit(SignUpState.signupsuccess(signUpResponse)),
      failure: (error) => emit(SignUpState.signupfailure(error.toString())),
    );
  }
}
