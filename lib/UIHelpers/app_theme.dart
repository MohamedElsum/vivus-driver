import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/fonts.dart';
import 'package:vivus_driver/constants.dart';

class DefaultThemeColors {
  static const splashTextColor = Color.fromRGBO(89, 171, 68, 1);
  static const splashBottomTextColor = Colors.black;
  static const phoneNumberColor = Color.fromRGBO(53, 53, 53, 0.8);
  static const passwordColor = Color.fromRGBO(53, 53, 53, 0.8);
  static const emailIcon = Color.fromRGBO(213, 213, 213, 1);
  static const passIcon = Color.fromRGBO(213, 213, 213, 1);
  static const checkboxColor = Colors.green;
  static const checkboxBorderColor = Colors.grey;
  static const remembermeColor = Color.fromRGBO(53, 53, 53, 0.5);
}

class FontTextStyle {
  static TextStyle splashText = TextStyle(
    fontFamily: Fonts.poppinsBold,
    fontSize: 48.getFontSize(),
    color: DefaultThemeColors.splashTextColor,
  );
  static TextStyle splashBottomText = TextStyle(
    fontFamily: Fonts.poppinsRegular,
    fontSize: 15.getFontSize(),
    color: DefaultThemeColors.splashBottomTextColor,
  );
  static TextStyle phoneNumber = TextStyle(
    fontFamily: Fonts.poppinsSemiBold,
    fontSize: 16.getFontSize(),
    color: DefaultThemeColors.phoneNumberColor,
  );
  static TextStyle password = TextStyle(
    fontFamily: Fonts.poppinsSemiBold,
    fontSize: 16.getFontSize(),
    color: DefaultThemeColors.passwordColor,
  );
  static TextStyle rememberme = TextStyle(
    fontFamily: Fonts.poppinsSemiBold,
    fontSize: 14.getFontSize(),
    color: DefaultThemeColors.remembermeColor,
  );
}