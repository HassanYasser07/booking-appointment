import 'package:booking_appointment/core/dependency_injection/dependency_injection.dart';
import 'package:booking_appointment/fetures/home/logic/home_cubit.dart';
import 'package:booking_appointment/fetures/home/view/home_view.dart';
import 'package:booking_appointment/fetures/login/logic/login_cubit/login_cubit.dart';
import 'package:booking_appointment/fetures/login/views/login_view.dart';
import 'package:booking_appointment/fetures/signUp/logic/sign_up_cubit.dart';
import 'package:booking_appointment/fetures/signUp/view/sign_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../fetures/doctor_details/logic/doctor_details_cubit.dart';
import '../../fetures/doctor_details/view/doctor_details_view.dart';
import '../../fetures/onboarding/onboarding_view.dart';
import '../helper/constants.dart';



abstract class Routes {
  static const kLoginView = '/loginView';
  static const kHomeView = '/homeView';
  static const kSignupView = '/signupView';
  static const kOnboardingView = '/onboardingView';
  static const kDoctorDetailsView = '/doctorDetailsView';




  static final router = GoRouter(
    initialLocation: isLoggedInUser ?kHomeView : kLoginView,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SizedBox.shrink(),
      ),
      GoRoute(
        path: kOnboardingView,
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
        path: kSignupView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignUpView(),
            ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) =>   BlocProvider(
          create: (context) => HomeCubit(getIt())..getSpecializations(),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kDoctorDetailsView,
        builder: (context, state) {
          final doctorId = state.extra as int;
          return BlocProvider(
            create: (context) => DoctorDetailsCubit(getIt())..getDoctorDetails(doctorId),
            child: DoctorDetailsView(doctorId: doctorId),
          );
        },
      ),

    ],
  );
}