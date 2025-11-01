import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_results.dart';
import 'package:docdoc/core/networking/api_services.dart';
import 'package:docdoc/features/sign/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiServices _apiServices;
  SignUpRepo(this._apiServices);

  Future<ApiResults<SignupResponse>> signUp(SignupRequestBody signUpRequestBody)async{
try{

  final response= await _apiServices.Register(signUpRequestBody);
  return ApiResults.success(response);
}catch(e){
  return ApiResults.failure(ErrorHandler.handle(e.toString()));
}

  }
}