import 'package:booking_appointment/core/theme/colors.dart';
import 'package:booking_appointment/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
 final EdgeInsetsGeometry? contentPadding;
 final String hintText;
 final TextStyle? hintStyle;
 final InputBorder? focusBorder;
 final InputBorder? enableBorder;
 final TextStyle? inputTextStyle;
 final bool? isObscureText;
 final Widget? suffixIcon;
 final Color? backGroundColor;
  const AppTextFormField({super.key, this.contentPadding, required this.hintText, this.hintStyle, this.focusBorder, this.enableBorder, this.inputTextStyle,  this.isObscureText, this.suffixIcon, this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:contentPadding?? EdgeInsets.symmetric(horizontal: 20.h,vertical: 18.h),
        enabledBorder:enableBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
              color: ColorsMaster.lighterGray,
              width: 1.3.h
          )
      ),
        focusedBorder:focusBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: ColorsMaster.mainBlue,
            width: 1.3.h
          )
        ),
        hintStyle: Styles.font14RegularLightGray,
        hintText:hintText ,
        suffix: suffixIcon,
        fillColor: backGroundColor?? ColorsMaster.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText?? false ,
    );
  }
}
