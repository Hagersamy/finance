import 'package:go_router/go_router.dart';

import '../features/auth/create_new_pass_screen.dart';
import '../features/auth/forget_pass_screen.dart';
import '../features/main_screen/main_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/auth/login_screen.dart';
import '../features/auth/register_screen.dart';
import '../features/auth/success_screen.dart';
import '../features/verify_otps/verify_otp_screen.dart';
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
      GoRoute(
        name: AppRoutes.forgetPassScreen,
        path: AppRoutes.forgetPassScreen,
        builder: (context, state) => const ForgetPassScreen(),
      ),
      GoRoute(
        name: AppRoutes.createNewPassScreen,
        path: AppRoutes.createNewPassScreen,
        builder: (context, state) => const CreateNewPassScreen(),
      ),
      GoRoute(
        name: AppRoutes.verifyOtpScreen,
        path: AppRoutes.verifyOtpScreen,
        builder: (context, state) => const VerifyOtpScreen(),
      ),
      GoRoute(
        name: AppRoutes.successScreen,
        path: AppRoutes.successScreen,
        builder: (context, state) => const SuccessScreen(),
      ),
      GoRoute(
        name: AppRoutes.MainScreen,
        path: AppRoutes.MainScreen,
        builder: (context, state) => const MainScreen(),
      )
    ],
  );
}
