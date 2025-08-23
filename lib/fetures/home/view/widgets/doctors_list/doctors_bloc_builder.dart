import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'doctors_list_view.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous,current)=>
          current is DoctorsSuccess ||
          current is DoctorsFailure,
        builder: (context,state){

          return state.maybeWhen(
              doctorsSuccess: (doctorsList){
                return success(doctorsList);
              },doctorsFailure: (errorHandler){
                return error(errorHandler);
              },orElse: (){
                return const SizedBox.shrink();
              });

          }
  );
  }

}
Widget success  (doctorsList){
  return DoctorsListView(doctorsList: doctorsList,);

}
Widget error  (errorHandler){
  return const SizedBox.shrink();
}