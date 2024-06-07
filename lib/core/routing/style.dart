import 'dart:ui';

import 'package:booking_appointment/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles{
  static TextStyle font24black700w=TextStyle(
    fontSize: 24.sp,
    color: Colors.black
  );
  static TextStyle font32blueBold=TextStyle(
      fontSize: 32.sp,
      color: ColorsMaster.mainBlue,
       fontWeight: FontWeight.w900
  );
  static TextStyle font13gray=TextStyle(
      fontSize: 13.sp,
      color: Colors.grey,
      fontWeight: FontWeight.normal
  );
  static TextStyle font16white=TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.normal
  );
}