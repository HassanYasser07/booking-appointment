import 'package:booking_appointment/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/notifications.svg',width: 100.h,height: 120.h,),
        SizedBox(width: 10.h,),
        Expanded(
          child: Column(
            children: [
              Text('Dr.Hasssa El Shaggggggggggggggggggggggmeyvs',style: Styles.font18DDarkBlueBold,overflow: TextOverflow.ellipsis,),
              Text('general',textAlign: TextAlign.start,),
              Text('(1500 reviews)'),

            ],
          ),
        ),
      ],
    );

  }
}
