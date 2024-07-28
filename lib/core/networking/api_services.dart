import 'package:booking_appointment/fetures/login/data/models/login_response.dart';
import 'package:booking_appointment/fetures/signUp/data/models/sign_uo_response.dart';
import 'package:booking_appointment/fetures/signUp/data/models/sign_up_request_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../fetures/login/data/models/login_request_body.dart';
import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices{
  factory ApiServices(Dio dio,{String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );
  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
      @Body() SignUpRequestBody signUpRequestBody,
      );

}