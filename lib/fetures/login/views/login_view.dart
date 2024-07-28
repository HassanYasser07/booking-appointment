import 'package:booking_appointment/core/widgets/app_text_buttom.dart';
import 'package:booking_appointment/fetures/login/data/models/login_request_body.dart';
import 'package:booking_appointment/fetures/login/logic/login_cubit/login_cubit.dart';
import 'package:booking_appointment/fetures/login/views/widgets/email_and_password.dart';
import 'package:booking_appointment/fetures/login/views/widgets/login_bloc_listener.dart';
import 'package:booking_appointment/fetures/login/views/widgets/welcome_text.dart';
import 'package:booking_appointment/fetures/login/views/widgets/dont_have_account_text.dart';
import 'package:booking_appointment/fetures/login/views/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/style.dart';

class LoginView extends StatelessWidget {

  const LoginView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeText(),
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('ForgetPassword?',
                        style: Styles.font13MediumDarkBlue,),),
                    SizedBox(height: 36.h,),
                    AppTextButton(
                        buttonText: 'Login',
                        textStyle: Styles.font16BlueRegular,
                        onPressed: () {
                          validateAndLogin(context);
                        }),
                    SizedBox(height: 16.h,),
                    const TermsAndConditionsText(),
                    SizedBox(height: 60.h,),
                    const DontHaveAccountText(),
                    const LoginBlocListener()

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndLogin(BuildContext context) {
    if (context
        .read<LoginCubit>()
        .formKey
        .currentState!
        .validate()) {
      context.read<LoginCubit>().emitLoadingState(


      );
    }
  }
}

