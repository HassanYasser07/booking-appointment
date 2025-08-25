import '../apis/doctor_details_api_service.dart';
import '../models/doctor_details_model.dart';

class DoctorRepository {
  final DoctorApiService apiService;

  DoctorRepository(this.apiService);

  Future<DoctorDetailsResponse> fetchDoctorDetails(int doctorId, String token) async {
    return await apiService.getDoctorDetails(doctorId, "Bearer $token");
  }
}
