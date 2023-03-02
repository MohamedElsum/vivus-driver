import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/login/presentation/widgets/text_form_field.dart';
import 'package:vivus_driver/router/routes_constants.dart';
import '../../../../UIHelpers/images.dart';
import '../../../login/presentation/widgets/auth_button.dart';
import '../../../signup/presentation/widgets/arrow_back.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

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
                height: 75.getHeight(),
              ),
              SvgPicture.asset(Images.forgeticon),
              SizedBox(
                height: 30.getHeight(),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Forget password',
                  style: FontTextStyle.forgetScreenText,
                ),
              ),
              SizedBox(
                height: 4.getHeight(),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Enter your email address or Phone number and we’ll send you Verification code',
                  textAlign: TextAlign.center,
                  style: FontTextStyle.forgetScreenHint,
                ),
              ),
              SizedBox(
                height: 64.getHeight(),
              ),
              TextFormInput(
                color: DefaultThemeColors.emailIcon,
                icon: Images.loginEmailAddress,
                obscure: false,
                hint: 'E-mail or Phone number',
                suffix: '',
                showPassword: false,
                keyBoardType: TextInputType.text,
                isEditProfile: false,
              ),
              SizedBox(
                height: 32.getHeight(),
              ),
              AuthButton(
                buttonText: 'Continue',
                onpress: () {
                  Get.toNamed(RoutesConstants.verificationScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
