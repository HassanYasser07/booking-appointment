import 'package:booking_appointment/core/widgets/app_text_buttom.dart';
import 'package:booking_appointment/core/widgets/app_text_form_field.dart';
import 'package:booking_appointment/fetures/onboarding/widgets/dont_have_account_text.dart';
import 'package:booking_appointment/fetures/onboarding/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/style.dart';
class LoginView extends StatefulWidget {

  const LoginView({super.key, });

  @override
  State<LoginView> createState() => _LoginViewState();

}

class _LoginViewState extends State<LoginView> {
  final formKey=GlobalKey<FormState>();
  bool isObscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.h,vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Form(
                    child:Column(
                      children: [

                        AppTextFormField(hintText: 'Email',),
                        SizedBox(height: 18.h,),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon:GestureDetector(
                            onTap: (){
                              setState(() {
                                isObscureText =! isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText? Icons.visibility_off : Icons.visibility

                            ),
                          ) ,),
                        SizedBox(height: 24.h,),
                        Align(
                          alignment: Alignment.centerRight,
                            child: Text('ForgetPassword?',style: Styles.font13MediumDarkBlue,),),
                        SizedBox(height: 36.h,),
                        AppTextButton(buttonText: 'Login', textStyle: Styles.font16BlueRegular, onPressed: (){}),
                        SizedBox(height: 16.h,),
                        TermsAndConditionsText(),
                        SizedBox(height: 60.h,),
                        DontHaveAccountText()

                      ],
                    )

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
