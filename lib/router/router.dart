import 'package:get/get.dart';
import 'package:vivus_driver/features/forget_password/presentation/controller/forget_password_bindings.dart';
import 'package:vivus_driver/features/forget_password/presentation/controller/reset_password_bindings.dart';
import 'package:vivus_driver/features/forget_password/presentation/controller/verification_bindings.dart';
import 'package:vivus_driver/features/forget_password/presentation/pages/forget_password_screen.dart';
import 'package:vivus_driver/features/forget_password/presentation/pages/reset_password_screen.dart';
import 'package:vivus_driver/features/forget_password/presentation/pages/verification_screen.dart';
import 'package:vivus_driver/features/login/presentation/controllers/login_bindings.dart';
import 'package:vivus_driver/features/login/presentation/pages/login_screen.dart';
import 'package:vivus_driver/features/missions/presentation/pages/home_screen.dart';
import 'package:vivus_driver/features/missions/presentation/pages/missions_screen.dart';
import 'package:vivus_driver/features/missions/presentation/pages/recent_missions.dart';
import 'package:vivus_driver/features/more/presentation/controller/contactus_bindings.dart';
import 'package:vivus_driver/features/more/presentation/pages/contactus_screen.dart';
import 'package:vivus_driver/features/more/presentation/pages/more_screen.dart';
import 'package:vivus_driver/features/signup/presentation/controller/signup_bindings.dart';
import 'package:vivus_driver/features/signup/presentation/pages/signup_screen.dart';
import 'package:vivus_driver/features/splash/presentation/controller/splash_binding.dart';
import 'package:vivus_driver/features/splash/presentation/pages/splash_screen.dart';
import 'package:vivus_driver/router/routes_constants.dart';
import '../features/missions/presentation/controller/home_bindings.dart';
import '../features/missions/presentation/controller/recent_missions_binding.dart';
import '../features/more/presentation/controller/more_bindings.dart';

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
    GetPage(
      name: RoutesConstants.homeScreen,
      page: () => HomeScreen(),
      transition: Transition.fade,
      binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesConstants.recentMissionsScreen,
      page: () => RecentMissions(),
      transition: Transition.fade,
      binding: RecentMissionsBindings(),
    ),
    GetPage(
      name: RoutesConstants.missionsScreen,
      page: () => MissionsScreen(),
      transition: Transition.fade,
      binding: RecentMissionsBindings(),
    ),
    GetPage(
      name: RoutesConstants.moreScreen,
      page: () => MoreScreen(),
      transition: Transition.fade,
      binding: MoreBindings(),
    ),
    GetPage(
      name: RoutesConstants.contactusScreen,
      page: () => ContactusScreen(),
      transition: Transition.fade,
      binding: ContactusBindings(),
    ),
  ];
}
