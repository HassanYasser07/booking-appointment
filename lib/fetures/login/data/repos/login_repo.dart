import 'package:booking_appointment/core/networking/api_error_handler.dart';
import 'package:booking_appointment/core/networking/api_result.dart';
import 'package:booking_appointment/core/networking/api_services.dart';
import 'package:booking_appointment/fetures/login/data/models/login_request_body.dart';
import 'package:booking_appointment/fetures/login/data/models/login_response.dart';

class LoginRepo{
   final  ApiServices _apiServices;
  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponse>>login(LoginRequestBody loginRequestBody )async{
    try{
      var response=await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }

  }
}