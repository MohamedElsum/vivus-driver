import 'package:get/get.dart';
import 'package:vivus_driver/features/forget_password/presentation/controller/forget_password_bindings.dart';
import 'package:vivus_driver/features/forget_password/presentation/controller/reset_password_bindings.dart';
import 'package:vivus_driver/features/forget_password/presentation/controller/verification_bindings.dart';
import 'package:vivus_driver/features/forget_password/presentation/pages/forget_password_screen.dart';
import 'package:vivus_driver/features/forget_password/presentation/pages/reset_password_screen.dart';
import 'package:vivus_driver/features/forget_password/presentation/pages/verification_screen.dart';
import 'package:vivus_driver/features/login/presentation/controllers/login_bindings.dart';
import 'package:vivus_driver/features/login/presentation/pages/login_screen.dart';
import 'package:vivus_driver/features/signup/presentation/controller/signup_bindings.dart';
import 'package:vivus_driver/features/signup/presentation/pages/signup_screen.dart';
import 'package:vivus_driver/features/splash/presentation/controller/splash_binding.dart';
import 'package:vivus_driver/features/splash/presentation/pages/splash_screen.dart';
import 'package:vivus_driver/router/routes_constants.dart';

class AppRouter {
  static final routes = [
    GetPage(
      name: RoutesConstants.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      binding: SplashBindings(),
    ),
    GetPage(
      name: RoutesConstants.loginScreen,
      page: () => LoginScreen(),
      transition: Transition.fade,
      binding: LoginBindings(),
    ),
    GetPage(
      name: RoutesConstants.signupScreen,
      page: () => SignupScreen(),
      transition: Transition.fade,
      binding: SignupBindings(),
    ),
    GetPage(
      name: RoutesConstants.forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
      transition: Transition.fade,
      binding: ForgetPasswordBindings(),
    ),
    GetPage(
      name: RoutesConstants.verificationScreen,
      page: () => VerificationScreen(),
      transition: Transition.fade,
      binding: VerificationBindings(),
    ),
    GetPage(
      name: RoutesConstants.resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      transition: Transition.fade,
      binding: ResetPasswordBinding(),
    ),
  ];
}
