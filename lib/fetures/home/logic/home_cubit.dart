import 'package:bloc/bloc.dart';
import 'package:booking_appointment/core/networking/api_error_handler.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial(),);
  void getSpecializations()async{
    print('1');
    emit(const HomeState.specializationsLoading()); print('2');
    var response=await _homeRepo.getSpecializations(); print('3');
    response.when(success: (specializationResponseModel){ print('4');
      emit(HomeState.specializationsSuccess(specializationResponseModel)); print('5');
    },
        failure: (errorHandler){ print('6');
      emit(HomeState.specializationsFailure(errorHandler));
        });
  }
}
