import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/style.dart';
class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/Group.svg',width: 35.h,height: 35.h,),
        SizedBox(width: 10.h,),
        Text("DocDoc",style: Styles.font24black700w,),

      ],
    );
  }
}
