import 'package:booking_appointment/core/networking/api_error_handler.dart';
import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(List<SpecializationData?>? specializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsFailure(ErrorHandler errorHandler ) = SpecializationsFailure;

  // doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsFailure(ErrorHandler errorHandler ) = DoctorsFailure;

}
