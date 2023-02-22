import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/router/routes_constants.dart';
import '../../../../UIHelpers/app_theme.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RoutesConstants.forgetPasswordScreen);
      },
      child: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.only(right: 15),
        child: Text(
          'Forget password?',
          style: FontTextStyle.forgetPass,
        ),
      ),
    );
  }
}
