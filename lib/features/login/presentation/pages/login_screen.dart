import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivus_driver/constants.dart';
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
              Form(
                key: loginFormKey,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                        left: 38.getWidth(),
                      ),
                      child: Text(
                        'Phone Number',
                        style: FontTextStyle.phoneNumber,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 38.getWidth()),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 24.getHeight(),
                            maxWidth: 24.getWidth(),
                          ),
                          prefixIcon: SvgPicture.asset(
                            Images.loginEmail,
                            colorFilter: const ColorFilter.mode(
                              DefaultThemeColors.emailIcon,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.getHeight(),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                        left: 38.getWidth(),
                      ),
                      child: Text(
                        'Password',
                        style: FontTextStyle.password,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 38.getWidth()),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIconConstraints: BoxConstraints(
                            minHeight: 24.getHeight(),
                            minWidth: 24.getWidth(),
                            maxHeight: 48.getHeight(),
                            maxWidth: 48.getWidth(),
                          ),
                          prefixIcon: SvgPicture.asset(
                            Images.loginPass,
                            colorFilter: const ColorFilter.mode(
                              DefaultThemeColors.passIcon,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 23.getWidth(),
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
