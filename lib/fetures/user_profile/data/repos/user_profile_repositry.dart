import '../apis/user_profile_services.dart';
import '../models/user_profile_model.dart';

class UserProfileRepository {
 final UserProfileApiService userProfileApiService;
 UserProfileRepository(this.userProfileApiService);
 Future<UserModel> getUserProfile( String token)async{
   return await userProfileApiService.getUserProfile("Bearer $token");
 }
}