import 'package:booking_appointment/fetures/doctor_details/view/widgets/custom_doctor_details_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/style.dart';
import '../../../core/widgets/app_text_buttom.dart';


class DoctorDetailsView extends StatelessWidget {
  final int doctorId;
  const DoctorDetailsView({super.key, required this.doctorId});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomDoctorDetailsBlocBuilder(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppTextButton(buttonText: 'Make An Appointment', textStyle: Styles.font16BlueRegular, onPressed: () {  } ,),
            ),
            SizedBox(height: 16.h,)

          ],
        )
      ),
    );
  }
}
