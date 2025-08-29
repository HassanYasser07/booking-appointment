import 'package:booking_appointment/fetures/user_profile/data/models/user_profile_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'user_profile_services.g.dart';

@RestApi(baseUrl: "https://vcare.integration25.com/api")
abstract class UserProfileApiService {
  factory UserProfileApiService(Dio dio, {String baseUrl}) =
      _UserProfileApiService;

  @GET("/user/profile")
  Future<UserModel> getUserProfile(@Header("Authorization") String token) ;
}
