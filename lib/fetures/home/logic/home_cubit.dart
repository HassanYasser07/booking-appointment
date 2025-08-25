import 'package:bloc/bloc.dart';
import 'package:booking_appointment/core/helper/extention.dart';
import 'package:booking_appointment/core/networking/api_error_handler.dart';
import '../data/models/specializations_response_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial(),);
  List<SpecializationData?>? specializationList=[];
  void getSpecializations()async{
    print('1');
    emit(const HomeState.specializationsLoading()); print('2');
    var response=await _homeRepo.getSpecializations(); print('3');
    response.when(success: (specializationResponseModel){ print('4');
      specializationList = specializationResponseModel.specializationDataList??[];

      getDoctorsList(specializationId: specializationList?.first?.id  ?? 0);
       emit(HomeState.specializationsSuccess(specializationList)); print('5');
    },
        failure: (apiErrorModel){ print('6');
      emit(HomeState.specializationsFailure(apiErrorModel));
        });
  }
 void getDoctorsList({required int specializationId}){
    List<Doctors?>? doctorsList=getSpecializationListBySpecializationId(specializationId);
    if(!doctorsList.isNullOrEmpty()){
      emit(HomeState.doctorsSuccess(doctorsList));

    }else{
      emit( HomeState.doctorsFailure());


    }
 }
getSpecializationListBySpecializationId(int specializationId){
    return specializationList?.firstWhere((element) => element?.id==specializationId)?.doctorsList;
}
}
