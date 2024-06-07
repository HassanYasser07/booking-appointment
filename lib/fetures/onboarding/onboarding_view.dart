import 'package:booking_appointment/fetures/onboarding/widgets/doc_logo_and_name.dart';
import 'package:booking_appointment/fetures/onboarding/widgets/doctor_image_and_text.dart';
import 'package:booking_appointment/fetures/onboarding/widgets/get_started_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SafeArea(
        child: SingleChildScrollView(
           child: Padding(
             padding:  EdgeInsets.only(top: 30.h,bottom: 30.h),
             child: Column(
                 children: [
                   DocLogoAndName(),
                   SizedBox(height: 30.h,),
                   DoctorImageAndText(),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 20.0.h),
                     child: Column(
                       children: [
                         Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',textAlign: TextAlign.center,),
                         SizedBox(height: 30.h,),
                         GetStartedButton()
                       ],
                     ),
                   )
                 ],
               ),
           ),
         ),
       )
    );



   }
 }
