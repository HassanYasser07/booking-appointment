import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/colors.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final SpecializationData? specializationsData;

  const DoctorSpecialityListViewItem({super.key, required this.specializationsData,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: ColorsMaster.lightBlue,
          child: SvgPicture.asset('assets/images/Group.svg',width: 40.h,height: 40.h,),
        ),
        Text(specializationsData?.name ?? 'Specialization'),

        Text('data')
      ],
    );
  }
}
