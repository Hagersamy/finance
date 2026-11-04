import 'package:go_router/go_router.dart';

import '../features/onboarding/onboarding_screen.dart';
import '../features/auth/login_screen.dart';
import '../features/auth/register_screen.dart';
// import '../features/auth/forget_password_screen.dart';
import 'app_routes.dart';

class RouterGeneratinConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        name: AppRoutes.onBoardingScreen,
        path: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        name: AppRoutes.loginScreen,
        path: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: AppRoutes.registerScreen,
        path: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      // GoRoute(
      //   name: AppRoutes.forgetPassScreen,
      //   path: AppRoutes.forgetPassScreen,
      //   builder: (context, state) => const ForgetPasswordScreen(),
      // ),
    ],
  );
}
