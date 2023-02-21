import 'package:flutter/material.dart';
import 'package:vivus_driver/constants.dart';

import '../../../../UIHelpers/app_theme.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Forget my Password',
          style: FontTextStyle.forgetPass,
        ),
        SizedBox(
          height: 17.getHeight(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have a problem and want some',
              style: FontTextStyle.needHelp,
            ),
            SizedBox(
              width: 8.getWidth(),
            ),
            Text(
              'help?',
              style: FontTextStyle.help,
            ),
          ],
        ),
      ],
    );
  }
}
