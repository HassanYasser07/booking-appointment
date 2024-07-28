import 'package:booking_appointment/core/theme/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: Styles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: Styles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                GoRouter.of(context).pushReplacementNamed(Routes.kLoginView);
              },
          ),
        ],
      ),
    );
  }
}