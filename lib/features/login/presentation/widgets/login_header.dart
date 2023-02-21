import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/constants.dart';
import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 86.getHeight(),
        ),
        SvgPicture.asset(Images.loginLogo),
        Text(
          'Vivus Driver',
          style: FontTextStyle.splashText,
        ),
        SizedBox(
          height: 34.getHeight(),
        ),
      ],
    );
  }
}
