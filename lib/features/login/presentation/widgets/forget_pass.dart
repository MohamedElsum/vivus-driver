import 'package:flutter/material.dart';
import 'package:vivus_driver/constants.dart';

import '../../../../UIHelpers/app_theme.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.only(right: 15),
      child: Text(
        'Forget password?',
        style: TextStyle(
          color: Color.fromRGBO(89, 171, 68, 1),
          fontSize: 13,
          fontFamily: 'PoppinsRegular',
        ),
      ),
    );
  }
}
