import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/fonts.dart';
import 'package:vivus_driver/constants.dart';

class DefaultThemeColors {
  static const splashTextColor = Color.fromRGBO(89, 171, 68, 1);
  static const splashBottomTextColor = Colors.black;
  static const timerTextColor = Colors.black;
  static const phoneNumberColor = Color.fromRGBO(53, 53, 53, 0.8);
  static const passwordColor = Color.fromRGBO(53, 53, 53, 0.8);
  static const emailIcon = Color.fromRGBO(213, 213, 213, 1);
  static const passIcon = Color.fromRGBO(213, 213, 213, 1);
  static const checkboxColor = Colors.green;
  static const checkboxBorderColor = Colors.grey;
  static const hintTextColor = Colors.grey;
  static const remembermeColor = Color.fromRGBO(53, 53, 53, 0.5);
  static const authButtonColor = Color.fromRGBO(89, 171, 68, 1);
  static const authButtonTextColor = Colors.white;
  static const forgetPassColor = Color.fromRGBO(89, 171, 68, 1);
  static const needHelp = Colors.black;
  static const help = Color.fromRGBO(129, 162, 227, 1);
  static const textfieldBorder = Color.fromRGBO(217, 217, 217, 1);
  static const createAccountColor = Color.fromRGBO(89, 171, 68, 1);
  static const forgetScreenHint = Color.fromRGBO(135, 135, 135, 1);
  static const pinCodeInActiveColor = Color.fromRGBO(217, 217, 217, 1);
  static const pinCodeActiveColor = Color.fromRGBO(89, 171, 68, 1);
  static const resendColor = Color.fromRGBO(89, 171, 68, 1);
  static const notMemberColor = Colors.grey;
  static final pastedPinText = Colors.green.shade600;
  static const dashedBorderColor = Color.fromRGBO(128, 128, 128, 1);
  static const missionItemColor = Color.fromRGBO(44, 62, 72, 1);
  static const missionLocationDetails = Colors.white;
  static const editButtonColor = Color.fromRGBO(129, 162, 227, 1);
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
  static TextStyle authButton = TextStyle(
    color: DefaultThemeColors.authButtonTextColor,
    fontFamily: Fonts.poppinsSemiBold,
    fontSize: 18.getFontSize(),
  );
  static TextStyle forgetPass = TextStyle(
    color: DefaultThemeColors.forgetPassColor,
    fontSize: 15.getFontSize(),
    fontFamily: Fonts.poppinsRegular,
  );
  static TextStyle needHelp = TextStyle(
    color: DefaultThemeColors.needHelp,
    fontFamily: Fonts.poppinsMedium,
    fontSize: 16.getFontSize(),
  );
  static TextStyle help = TextStyle(
    color: DefaultThemeColors.help,
    fontFamily: Fonts.poppinsMedium,
    fontSize: 16.getFontSize(),
  );
  static TextStyle hintText = TextStyle(
    color: DefaultThemeColors.hintTextColor,
    fontSize: 15.getFontSize(),
    fontFamily: Fonts.poppinsRegular,
  );
  static TextStyle textfieldText = TextStyle(
    color: DefaultThemeColors.splashBottomTextColor,
    fontSize: 15.getFontSize(),
    fontFamily: Fonts.poppinsMedium,
  );
  static TextStyle notMember = TextStyle(
    fontFamily: Fonts.poppinsRegular,
    fontSize: 15.getFontSize(),
    color: DefaultThemeColors.notMemberColor,
  );
  static TextStyle createAccount = TextStyle(
    fontFamily: Fonts.poppinsRegular,
    fontSize: 15.getFontSize(),
    color: DefaultThemeColors.createAccountColor,
  );
  static TextStyle signupCreateAccount = TextStyle(
    fontSize: 24.getFontSize(),
    fontFamily: Fonts.poppinsBold,
  );
  static TextStyle uploadImages = TextStyle(
    fontSize: 17.getFontSize(),
    fontFamily: Fonts.poppinsSemiBold,
  );
  static TextStyle signupHeaderHint = TextStyle(
    fontFamily: Fonts.poppinsRegular,
    fontSize: 19.getFontSize(),
    color: DefaultThemeColors.hintTextColor,
  );
  static TextStyle forgetScreenText = TextStyle(
    fontFamily: Fonts.poppinsSemiBold,
    fontSize: 27.getFontSize(),
    color: DefaultThemeColors.splashBottomTextColor,
  );
  static TextStyle forgetScreenHint = TextStyle(
    fontFamily: Fonts.poppinsRegular,
    fontSize: 16.getFontSize(),
    color: DefaultThemeColors.forgetScreenHint,
  );
  static TextStyle verification = TextStyle(
    fontFamily: Fonts.poppinsSemiBold,
    fontSize: 27.getFontSize(),
    color: DefaultThemeColors.splashBottomTextColor,
  );
  static TextStyle verifyHint = TextStyle(
    fontFamily: Fonts.poppinsRegular,
    fontSize: 16.getFontSize(),
    color: DefaultThemeColors.forgetScreenHint,
  );
  static TextStyle timer = TextStyle(
    fontSize: 17.getFontSize(),
    fontFamily: Fonts.poppinsMedium,
    color: DefaultThemeColors.timerTextColor,
  );
  static TextStyle pastedPinText = TextStyle(
    color: DefaultThemeColors.pastedPinText,
    fontWeight: FontWeight.bold,
  );
  static TextStyle recieveCode = TextStyle(
    fontFamily: Fonts.poppinsRegular,
    fontSize: 16.getFontSize(),
    color: DefaultThemeColors.notMemberColor,
  );
  static TextStyle resend = TextStyle(
    fontFamily: Fonts.poppinsMedium,
    fontSize: 16.getFontSize(),
    color: DefaultThemeColors.resendColor,
  );
  static TextStyle newPassword = TextStyle(
    fontSize: 27.getFontSize(),
    fontWeight: FontWeight.bold,
    fontFamily: Fonts.poppinsMedium,
  );
  static TextStyle newPasswordHint = TextStyle(
    fontSize: 18.getFontSize(),
    fontFamily: Fonts.poppinsRegular,
    color: DefaultThemeColors.hintTextColor,
  );
  static TextStyle imagesNumber = TextStyle(
    fontSize: 15.getFontSize(),
    fontFamily: Fonts.poppinsRegular,
    color: DefaultThemeColors.hintTextColor,
  );
  static TextStyle bottomBarNavigationText = TextStyle(
    fontSize: 13.getFontSize(),
    fontFamily: Fonts.poppinsMedium,
    color: DefaultThemeColors.checkboxColor,
  );
  static TextStyle recentMissionsText = TextStyle(
    fontSize: 19.getFontSize(),
    fontFamily: Fonts.poppinsSemiBold,
    color: DefaultThemeColors.timerTextColor,
  );
  static TextStyle locationDetails = TextStyle(
    fontSize: 13.getFontSize(),
    fontFamily: Fonts.poppinsRegular,
    color: DefaultThemeColors.timerTextColor,
  );
  static TextStyle timeZone = TextStyle(
    color: DefaultThemeColors.timerTextColor,
    fontFamily: Fonts.poppinsRegular,
    fontSize: 7.getFontSize(),
  );
  static TextStyle time = TextStyle(
    color: DefaultThemeColors.timerTextColor,
    fontFamily: Fonts.poppinsRegular,
    fontSize: 11.getFontSize(),
  );
  static TextStyle textSpan = TextStyle(
    fontSize: 12.getFontSize(),
  );
  static TextStyle missionLocationDetails = TextStyle(
    fontSize: 13.getFontSize(),
    fontFamily: Fonts.poppinsRegular,
    color: DefaultThemeColors.missionLocationDetails,
  );
  static TextStyle username = TextStyle(
    fontSize: 21.getFontSize(),
    fontFamily: Fonts.poppinsMedium,
    color: DefaultThemeColors.timerTextColor,
  );
  static TextStyle moreModulesText = TextStyle(
    fontSize: 17.getFontSize(),
    fontFamily: Fonts.poppinsMedium,
    color: DefaultThemeColors.checkboxColor,
  );
}
