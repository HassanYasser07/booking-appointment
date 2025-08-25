import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/doctor_details_model.dart';

part 'doctor_details_api_service.g.dart';

@RestApi(baseUrl: "https://vcare.integration25.com/api")
abstract class DoctorApiService {
  factory DoctorApiService(Dio dio, {String baseUrl}) = _DoctorApiService;

  @GET("/doctor/show/{id}")
  Future<DoctorDetailsResponse> getDoctorDetails(
      @Path("id") int doctorId,
      @Header("Authorization") String token,
      );
}
