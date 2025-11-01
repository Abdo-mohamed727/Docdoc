import 'package:dio/dio.dart';
import 'package:docdoc/Core/Networking/app_constants.dart';
import 'package:docdoc/features/login/Data/models/login_request_body.dart';
import 'package:docdoc/features/login/Data/models/login_response.dart';
import 'package:docdoc/features/sign/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  
  @POST(ApiConstants.register)
  Future<SignupResponse> Register(
    @Body() SignupRequestBody signUpRequestBody,
  );
}
