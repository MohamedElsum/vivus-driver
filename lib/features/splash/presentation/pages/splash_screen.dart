import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/router/routes_constants.dart';
import '../../../../UIHelpers/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Get.toNamed(RoutesConstants.loginScreen),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Images.splashBackground),
            Text(
              'Vivus Driver',
              style: FontTextStyle.splashText,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(
          left: 35.getWidth(),
        ),
        alignment: Alignment.bottomCenter,
        child: Text(
          'Welcome to the Vivus team',
          style: FontTextStyle.splashBottomText,
        ),
      ),
    );
  }
}
