import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/style.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome Back",
          style: Styles.font24Blue700w,
        ),
        SizedBox(height: 10.h,),
        Text(
          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience",
          style: Styles.font14RegularGray,
        ),
        SizedBox(height: 36.h,),
      ],
    );
  }
}
