import 'package:booking_appointment/fetures/home/view/widgets/specialization_list/spiciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import '../doctors_list/doctor_shimmer_loading.dart';
import 'speciality_list_view.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous,current)=>
      current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsFailure,

       builder: (context,state){
       return state.maybeWhen(
           specializationsLoading:(){

         return setupLoading();

       },specializationsSuccess: (specializationDataList){

           var specializationsList=specializationDataList;
           return setupSuccess(specializationsList);
       },specializationsFailure: (errorHandler){
         return setupError();
       },orElse: (){
         return const SizedBox.shrink();
       }
        );
       });
  }
  Widget setupLoading(){
      return Expanded(child: Column(
        children: [
          const SpecialityShimmerLoading(),
          SizedBox(height: 10.h,),
          const DoctorsShimmerLoading(),
        ],
      ));
  }

  Widget setupSuccess(specializationsList){
    return
      SpecialityListView(specializationDataList:specializationsList ?? [],);
  }

  Widget setupError(){
  return  const SizedBox.shrink();
  }
}
