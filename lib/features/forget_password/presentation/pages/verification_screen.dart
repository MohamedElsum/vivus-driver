import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/forget_password/presentation/widgets/pin_code.dart';
import 'package:vivus_driver/features/forget_password/presentation/widgets/verify_hint.dart';
import 'package:vivus_driver/features/login/presentation/widgets/auth_button.dart';

import '../../../../UIHelpers/images.dart';
import '../../../signup/presentation/widgets/arrow_back.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key}) : super(key: key);
  String codeText = '';
  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10.getHeight(),
              ),
              ArrowBack(),
              SizedBox(
                height: 65.getHeight(),
              ),
              SvgPicture.asset(Images.verifyicon),
              SizedBox(
                height: 24.getHeight(),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Verification',
                  style: FontTextStyle.verification,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Enter the code we sent to you via sms',
                  style: FontTextStyle.verifyHint,
                ),
              ),
              SizedBox(
                height: 112.getHeight(),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  '00:30',
                  style: FontTextStyle.timer,
                ),
              ),
              SizedBox(
                height: 20.getHeight(),
              ),
              PinCode(
                codeText: codeText,
                pinCodeController: pinCodeController,
              ),
              SizedBox(
                height: 64.getHeight(),
              ),
              AuthButton(
                buttonText: 'Submit',
                onpress: () {},
              ),
              SizedBox(
                height: 16.getHeight(),
              ),
              VerificationHint(),
            ],
          ),
        ),
      ),
    );
  }
}
