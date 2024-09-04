import 'package:booking_appointment/fetures/home/view/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctor_speciality_list_view.dart';

class HomeViewBlocBuilder extends StatelessWidget {
  const HomeViewBlocBuilder({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous,current)=>
      current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsFailure,

       builder: (context,state){
         print('Building item at index: ');
       return state.maybeWhen(specializationsLoading:(){

         print(state);
         return setupLoading();

       },specializationsSuccess: (specializationResponseModel){

           print('   specializationsSuccess: ');
           var specializationsList=specializationResponseModel.specializationDataList;
           return setupSuccess(specializationsList);
       },specializationsFailure: (errorHandler){
         print('Error handled: ${errorHandler.apiErrorModel.code} - ${errorHandler.apiErrorModel.message}');
         return setupError();
       },orElse: (){
         return const SizedBox.shrink();
       }
        );
       });
  }
  Widget setupLoading(){
      return const SizedBox(
        height: 100,
        child: Center(child: CircularProgressIndicator()));
  }

  Widget setupSuccess(specializationsList){
    return
     Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(specializationDataList:specializationsList ?? [],),
          DoctorsListView(doctorsList:specializationsList?[0]?.doctorsList,),
        ],
      ),
    );
  }

  Widget setupError(){
  return  const SizedBox.shrink();
  }
}
