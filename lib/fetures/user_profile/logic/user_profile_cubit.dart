// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// part 'user_profile_state.dart';
//
// class UserProfileCubit extends Cubit<UserProfileState> {
//   UserProfileCubit() : super(UserProfileInitial());
// }
import 'package:bloc/bloc.dart';
import 'package:booking_appointment/fetures/user_profile/logic/user_profile_state.dart';

import '../../../core/helper/constants.dart';
import '../../../core/helper/shared_pref_helper.dart';
import '../data/repos/user_profile_repositry.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final UserProfileRepository repository;

  UserProfileCubit(this.repository) : super(UserProfileInitial());

  Future<void> fetchUserProfile() async {
    emit(UserProfileLoading());
    try {
      final token = await SharedPrefHelper.getSecuredString(SharedPrefKey.userToken);

      final user = await repository.getUserProfile(token);
      emit(UserProfileLoaded(user));
    } catch (e) {
      emit(UserProfileError(e.toString()));
    }
  }
}
