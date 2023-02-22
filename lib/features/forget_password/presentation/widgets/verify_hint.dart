import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';

class VerificationHint extends StatelessWidget {
  const VerificationHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'I didn\'t recieve the code!',
          style: FontTextStyle.recieveCode,
        ),
        Text(
          ' Resend',
          style: FontTextStyle.resend,
        ),
      ],
    );
  }
}
