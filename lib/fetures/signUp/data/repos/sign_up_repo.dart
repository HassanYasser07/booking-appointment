import 'package:booking_appointment/core/networking/api_result.dart';
import 'package:booking_appointment/fetures/signUp/data/models/sign_uo_response.dart';
import 'package:booking_appointment/fetures/signUp/data/models/sign_up_request_body.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_services.dart';
import '../../../login/data/models/login_response.dart';

class SignupRepo{
  final  ApiServices _apiServices;
  SignupRepo(this._apiServices);

  Future<ApiResult<SignupResponse>>signup(SignUpRequestBody signUpRequestBody )async{
    try{
      var response=await _apiServices.signup(signUpRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }

  }
}