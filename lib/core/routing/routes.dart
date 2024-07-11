import 'package:booking_appointment/core/dependency_injection/dependency_injection.dart';
import 'package:booking_appointment/fetures/home/home_view.dart';
import 'package:booking_appointment/fetures/login/logic/login_cubit/login_cubit.dart';
import 'package:booking_appointment/fetures/login/views/login_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../fetures/onboarding/onboarding_view.dart';



abstract class Routes {
  static const kLoginView = '/loginView';
  static const kHomeView = '/homeView';



  static final router = GoRouter(

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
            ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),

    ],
  );
}