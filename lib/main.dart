import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/router/router.dart';
import 'package:vivus_driver/router/routes_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (_, widget) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vivus Driver',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: AppRouter.routes,
        initialRoute: RoutesConstants.splashScreen,
      ),
    );
  }
}
