import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/router/routes_constants.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not a member ?',
          style: FontTextStyle.notMember,
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(RoutesConstants.signupScreen);
          },
          child: Text(
            'Create account',
            style: FontTextStyle.createAccount,
          ),
        ),
      ],
    );
  }
}
