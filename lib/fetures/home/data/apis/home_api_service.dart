import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import 'home_api_constants.dart';

part 'home_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiServices{

  factory HomeApiServices(Dio dio,)=_HomeApiServices;
  @GET(HomeApiConstants.specializationEp)
    Future<SpecializationResponseModel>  getSpecializations();
}



