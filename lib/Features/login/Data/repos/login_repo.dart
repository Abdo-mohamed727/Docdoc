import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_results.dart';
import 'package:docdoc/core/networking/api_services.dart';
import 'package:docdoc/features/login/Data/models/login_request_body.dart';
import 'package:docdoc/features/login/Data/models/login_response.dart';

class LoginRepo{
final ApiServices _apiServices;

LoginRepo(this._apiServices);

Future<ApiResults<LoginResponse>> login(LoginRequestBody loginRequestBody)async{
  try{

    final response =await _apiServices.login(loginRequestBody );
    return ApiResults.success(response);
  }catch(error){
    print(loginRequestBody.toJson());

    print(error.toString());

    return ApiResults.failure(ErrorHandler.handle(error.toString()));
  }

}

}