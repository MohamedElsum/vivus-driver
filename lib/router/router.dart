import 'package:get/get.dart';
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
  ];
}
