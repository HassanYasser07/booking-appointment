import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/style.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/images/Group (1).svg',),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops:const [.14,.4],
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0)
                ]
              )
            ),
            child: Image.asset('assets/images/onboarder_doctor.png')),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text("Best Doctor Appointment App",
                textAlign: TextAlign.center,
                style:Styles.font32blueBold
                 ))
      ],
    );
  }
}
