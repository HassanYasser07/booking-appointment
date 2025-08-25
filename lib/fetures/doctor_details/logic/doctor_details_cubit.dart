import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helper/constants.dart';
import '../../../core/helper/shared_pref_helper.dart';
import '../data/models/doctor_details_model.dart';
import '../data/repos/doctor_details_repo.dart';

part 'doctor_details_state.dart';

class DoctorDetailsCubit extends Cubit<DoctorDetailsState> {
  final DoctorRepository repository;

  DoctorDetailsCubit(this.repository) : super(DoctorDetailsInitial());

  Future<void> getDoctorDetails(int doctorId) async {
    emit(DoctorDetailsLoading());
    try {
      final token = await SharedPrefHelper.getSecuredString(SharedPrefKey.userToken);
      final doctor = await repository.fetchDoctorDetails(doctorId, token);
      emit(DoctorDetailsLoaded(doctor));
    } catch (e) {
      emit(DoctorDetailsError(e.toString()));
    }
  }
}
