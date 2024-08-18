import 'package:booking_appointment/core/theme/style.dart';
import 'package:flutter/material.dart';
class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality',style: Styles.font18DDarkBlueSemiBold,),
        const Spacer(),
        Text('See All',style: Styles.font12BlueRegular,),
      ],
    );
  }
}
