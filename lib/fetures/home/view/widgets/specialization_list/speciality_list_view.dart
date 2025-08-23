import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:booking_appointment/fetures/home/logic/home_cubit.dart';
import 'package:booking_appointment/fetures/home/view/widgets/specialization_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SpecialityListView extends StatefulWidget {
 final List<SpecializationData?> specializationDataList;
  const SpecialityListView({super.key,required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: EdgeInsetsDirectional.only(start: index==0 ?0 :0),
            child:  GestureDetector(
              onTap: (){
                setState(() {
                  selectedSpecializationIndex=index;
                });
                context.read<HomeCubit>().getDoctorsList(specializationId: widget.specializationDataList[index]!.id!);
              },
                child: SpecialityListViewItem(
                  itemIndex: index,
                  selectedIndex:selectedSpecializationIndex,
                  specializationsData:widget.specializationDataList[index] ,)));
      },
      itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );

  }
}
