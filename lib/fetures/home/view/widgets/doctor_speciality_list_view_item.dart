import 'package:booking_appointment/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/colors.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: ColorsMaster.lightBlue,
          child: SvgPicture.asset('assets/images/Group.svg',width: 40.h,height: 40.h,),
        ),
        Text('data'),
      ],
    );
  }
}
