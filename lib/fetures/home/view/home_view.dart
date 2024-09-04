
import 'package:booking_appointment/fetures/home/view/widgets/doctor_blue_container.dart';
import 'package:booking_appointment/fetures/home/view/widgets/doctor_speciality_see_all.dart';
import 'package:booking_appointment/fetures/home/view/widgets/home_top_bar.dart';
import 'package:booking_appointment/fetures/home/view/widgets/home_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key,  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20,16,20,16),
          width: double.infinity,
          child:  Column(
            children: [
              const HomeTopBar(),
              SizedBox(height: 10.h,),
              const DoctorBlueContainer(),
              SizedBox(height: 10.h,),
              const DoctorSpecialitySeeAll(),
              SizedBox(height: 10.h,),
              const HomeViewBlocBuilder()
          ]
          ),
        ),
      ),

    ) ;
  }

}
