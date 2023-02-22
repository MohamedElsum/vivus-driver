import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';

class AuthButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onpress;

  const AuthButton({
    super.key,
    required this.buttonText,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380.getWidth(),
      height: 60.getHeight(),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            DefaultThemeColors.authButtonColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: onpress,
        child: Text(buttonText, style: FontTextStyle.authButton),
      ),
    );
  }
}
