import 'package:booking_appointment/fetures/login/login_view.dart';
import 'package:go_router/go_router.dart';

import '../../fetures/onboarding/onboarding_view.dart';

abstract class Routes{
  static const kLoginView='/loginView';


  static final router = GoRouter(

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),

    ],
  );
}