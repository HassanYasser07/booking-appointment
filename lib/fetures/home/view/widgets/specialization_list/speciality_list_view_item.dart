import 'package:booking_appointment/fetures/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/style.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationData? specializationsData;
  final int? selectedIndex;
  final int itemIndex;

  const SpecialityListViewItem({super.key, required this.specializationsData, this.selectedIndex, required this.itemIndex,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorsMaster.darkBlue,
                width: 1.5
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: ColorsMaster.lightBlue,
              child: SvgPicture.asset(
                'assets/images/Group.svg',
                height: 42.h,
                width: 42.w,
              ),
            ),
          )
              : CircleAvatar(
            radius: 28,
            backgroundColor: ColorsMaster.lightBlue,
            child: SvgPicture.asset(
              'assets/images/Group.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          SizedBox(height: 8.h),
          Flexible(
            child: Text(
              textAlign: TextAlign.center,
              specializationsData?.name ?? 'Specialization',
              style: itemIndex == selectedIndex
                  ? Styles.font14DarkBlueBold
                  : Styles.font14DarkBlueMedium,


            ),
          ),
        ],
      ),
    );
  }
}
