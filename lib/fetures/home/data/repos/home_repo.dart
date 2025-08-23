import 'package:booking_appointment/core/networking/api_result.dart';
import 'package:booking_appointment/fetures/home/data/apis/home_api_service.dart';
import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';


class HomeRepo {
  final HomeApiServices _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationResponseModel>> getSpecializations()async{
    try{print('10');

      final response =await _homeApiService.getSpecializations();print('11');

      return ApiResult.success(response);
    }catch(error){
      print(111111);

      print(error);
      return ApiResult.failure(ErrorHandler.handle(error));
    }

  }

}
