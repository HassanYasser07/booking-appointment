import 'package:booking_appointment/fetures/home/view/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: EdgeInsetsDirectional.only(start: index==0 ?0 :15),
            child: const DoctorSpecialityListViewItem());
      },
      itemCount: 8,
        scrollDirection: Axis.horizontal,
      ),
    );

  }
}
