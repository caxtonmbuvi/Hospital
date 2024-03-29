
import '../exports.dart';


class AppRoutes {
  static final routes = {
    // Routes.auth: (context) =>  const AuthScreen(),
    // Routes.onboarding: (context) => const OnBoardingScreen(),
    Routes.landing: (context) => const LandingPage(),
    Routes.register: (context) => const RegisterScreen(),
    Routes.forgot_password: (context) => const ForgotPasswordScreen(),
    Routes.login: (context) => const LoginScreen(),
    Routes.singlePrescription: (context) => const SinglePrescription(),
  };
}
