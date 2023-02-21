import 'package:flutter/material.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/login/presentation/widgets/auth_button.dart';
import 'package:vivus_driver/features/login/presentation/widgets/forget_pass.dart';
import 'package:vivus_driver/features/login/presentation/widgets/login_header.dart';
import 'package:vivus_driver/features/login/presentation/widgets/text_form_field.dart';
import 'package:vivus_driver/features/login/presentation/widgets/textfield_title.dart';
import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  bool? checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              LoginHeader(),
              Form(
                key: loginFormKey,
                child: Column(
                  children: [
                    const TextFieldTitle(
                      title: 'Email Address',
                    ),
                    TextFormInput(
                      color: DefaultThemeColors.emailIcon,
                      icon: Images.loginEmailAddress,
                      obscure: false,
                      hint: 'Enter Email Address',
                    ),
                    SizedBox(
                      height: 16.getHeight(),
                    ),
                    const TextFieldTitle(
                      title: 'Password',
                    ),
                    TextFormInput(
                      color: DefaultThemeColors.passIcon,
                      icon: Images.loginPassword,
                      obscure: true,
                      hint: 'Password',
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 12.getWidth(),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            value: checkboxValue,
                            activeColor: DefaultThemeColors.checkboxColor,
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                width: 1.0,
                                color: DefaultThemeColors.checkboxBorderColor,
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                checkboxValue = value;
                              });
                            },
                          ),
                          Text(
                            'Remember me',
                            style: FontTextStyle.rememberme,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.getHeight(),
                    ),
                    const AuthButton(
                      buttonText: 'Login',
                    ),
                    SizedBox(
                      height: 150.getHeight(),
                    ),
                    ForgetPassword(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
