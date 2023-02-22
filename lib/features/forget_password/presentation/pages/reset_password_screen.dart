import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/login/presentation/widgets/auth_button.dart';
import 'package:vivus_driver/features/login/presentation/widgets/textfield_title.dart';

import '../../../../UIHelpers/images.dart';
import '../../../login/presentation/widgets/text_form_field.dart';
import '../../../signup/presentation/widgets/arrow_back.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
              Container(
                alignment: Alignment.center,
                child: Text(
                  'New Password',
                  style: FontTextStyle.newPassword,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  'Your password must be different from your old one',
                  textAlign: TextAlign.center,
                  style: FontTextStyle.newPasswordHint,
                ),
              ),
              SizedBox(
                height: 64.getHeight(),
              ),
              const TextFieldTitle(
                title: 'New Password',
              ),
              TextFormInput(
                color: DefaultThemeColors.passIcon,
                icon: Images.loginPassword,
                obscure: true,
                hint: 'New Password',
                suffix: Images.eyepass,
                showPassword: true,
                keyBoardType: TextInputType.text,
              ),
              SizedBox(
                height: 16.getHeight(),
              ),
              const TextFieldTitle(
                title: 'Confirm New Password',
              ),
              TextFormInput(
                color: DefaultThemeColors.passIcon,
                icon: Images.loginPassword,
                obscure: true,
                hint: 'Confirm New Password',
                suffix: Images.eyepass,
                showPassword: true,
                keyBoardType: TextInputType.text,
              ),
              SizedBox(
                height: 64.getHeight(),
              ),
              AuthButton(
                buttonText: 'Save',
                onpress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
