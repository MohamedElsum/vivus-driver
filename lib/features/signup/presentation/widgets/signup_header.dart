import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.getHeight(),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Create account',
            style: FontTextStyle.signupCreateAccount,
          ),
        ),
        SizedBox(
          height: 10.getHeight(),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Please enter the following data',
            style: FontTextStyle.signupHeaderHint,
          ),
        ),
      ],
    );
  }
}
