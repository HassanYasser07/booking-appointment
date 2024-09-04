import 'package:booking_appointment/core/theme/style.dart';
import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/notifications.svg',width: 100.h,height: 120.h,),
        SizedBox(width: 10.h,),
        Expanded(
          child: Column(
            children: [
              Text(doctorsModel?.name ?? 'Name',style: Styles.font18DDarkBlueBold,overflow: TextOverflow.ellipsis,),
              Text('${doctorsModel?.degree} | ${doctorsModel?.photo}',textAlign: TextAlign.start,),
              Text(doctorsModel?.email ??''),

            ],
          ),
        ),
      ],
    );

  }
}
