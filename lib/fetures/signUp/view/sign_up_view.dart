import 'package:booking_appointment/core/theme/style.dart';
import 'package:booking_appointment/fetures/signUp/view/widgets/aleady_have_acount.dart';
import 'package:booking_appointment/fetures/signUp/view/widgets/sign_up_bloc_listener.dart';
import 'package:booking_appointment/fetures/signUp/view/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_buttom.dart';
import '../../login/views/widgets/terms_and_conditions_text.dart';
import '../logic/sign_up_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: Styles.font24BlueBold,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: Styles.font14GrayRegular,
                ),
                SizedBox(
                  height: 36.h,
                ),
                Column(
                  children: [
                    const SignupForm(),
                    SizedBox(
                      height: 40.h,
                    ),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: Styles.font13DarkBlueRegular,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const TermsAndConditionsText(),
                    SizedBox(
                      height: 30.h,
                    ),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitLoadingState();
    }
  }
}
