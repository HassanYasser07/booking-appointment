import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routing.dart';
import '../../../../core/theme/style.dart';


class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(

            text: 'Don\'t have an account?',
            style: Styles.font13DarkBlueRegular,
          ),
          TextSpan(
            recognizer: TapGestureRecognizer(
            )..onTap=(){
              GoRouter.of(context).push(Routes.kSignupView);
            },
            text: ' Sign Up',
            style: Styles.font13BlueSemiBold,

          ),
        ],
      ),
    );
  }
}