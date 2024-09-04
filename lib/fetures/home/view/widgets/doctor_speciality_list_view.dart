import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:booking_appointment/fetures/home/view/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DoctorSpecialityListView extends StatelessWidget {
 final List<SpecializationData?> specializationDataList;
  const DoctorSpecialityListView({super.key,required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: EdgeInsetsDirectional.only(start: index==0 ?0 :15),
            child:  DoctorSpecialityListViewItem(specializationsData:specializationDataList[index] ,));
      },
      itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );

  }
}
