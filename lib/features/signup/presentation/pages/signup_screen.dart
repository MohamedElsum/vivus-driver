import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/login/presentation/widgets/auth_button.dart';
import 'package:vivus_driver/features/login/presentation/widgets/text_form_field.dart';
import 'package:vivus_driver/features/signup/presentation/widgets/arrow_back.dart';
import 'package:vivus_driver/features/signup/presentation/widgets/signup_header.dart';
import '../../../../UIHelpers/images.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
              SignupHeader(),
              SizedBox(
                height: 40.getHeight(),
              ),
              TextFormInput(
                color: DefaultThemeColors.emailIcon,
                icon: Images.fullName,
                obscure: false,
                hint: 'Full Name',
                suffix: '',
                showPassword: false,
                keyBoardType: TextInputType.text,
              ),
              SizedBox(
                height: 15.getHeight(),
              ),
              TextFormInput(
                color: DefaultThemeColors.emailIcon,
                icon: Images.loginEmailAddress,
                obscure: false,
                hint: 'Email Address',
                suffix: '',
                showPassword: false,
                keyBoardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 15.getHeight(),
              ),
              TextFormInput(
                color: DefaultThemeColors.passIcon,
                icon: Images.loginPassword,
                obscure: true,
                hint: 'Password',
                suffix: Images.eyepass,
                showPassword: true,
                keyBoardType: TextInputType.text,
              ),
              SizedBox(
                height: 15.getHeight(),
              ),
              TextFormInput(
                color: DefaultThemeColors.emailIcon,
                icon: Images.mobile,
                obscure: false,
                hint: 'Phone number',
                suffix: '',
                showPassword: false,
                keyBoardType: TextInputType.number,
              ),
              SizedBox(
                height: 15.getHeight(),
              ),
              TextFormInput(
                color: DefaultThemeColors.emailIcon,
                icon: Images.carNumber,
                obscure: false,
                hint: 'Car number',
                suffix: '',
                showPassword: false,
                keyBoardType: TextInputType.number,
              ),
              SizedBox(
                height: 15.getHeight(),
              ),
              TextFormInput(
                color: DefaultThemeColors.emailIcon,
                icon: Images.licenseNumber,
                obscure: false,
                hint: 'License number',
                suffix: '',
                showPassword: false,
                keyBoardType: TextInputType.number,
              ),
              SizedBox(
                height: 20.getHeight(),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'Upload a copy of your driver\'s license and ID card, front and back',
                  style: FontTextStyle.uploadImages,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.getHeight(),
              ),
              AuthButton(
                buttonText: 'Create Account',
                onpress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
