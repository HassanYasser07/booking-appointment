import 'package:booking_appointment/core/networking/api_error_model.dart';
import 'package:booking_appointment/core/theme/style.dart';
import 'package:booking_appointment/fetures/login/logic/login_cubit/login_cubit.dart';
import 'package:booking_appointment/fetures/login/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routing.dart';
import '../../../../core/theme/colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
        current is LoginLoading || current is LoginSuccess || current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsMaster.mainBlue,
                ),
              ),
            );
          },
          loginSuccess: (loginResponse) {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.kHomeView);
          },
          loginError: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child:const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context,  ApiErrorModel apiErrorModel) {
    GoRouter.of(context).pop();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                apiErrorModel.gerErrorMessage(),
                style: Styles.font15DartBlueRegular,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  child: Text(
                    'Got it',
                    style: Styles.font14BlueSemiBold,
                  ),
                )
              ],
            ));
  }
}
