import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';

class PinCode extends StatefulWidget {
  String codeText;
  TextEditingController pinCodeController;

  PinCode({
    required this.codeText,
    required this.pinCodeController,
  });

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: PinCodeTextField(
        appContext: context,
        scrollPadding: const EdgeInsets.all(10),
        pastedTextStyle: FontTextStyle.pastedPinText,
        obscureText: false,
        length: 4,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          fieldWidth: 60.getWidth(),
          fieldHeight: 70.getHeight(),
          inactiveColor: DefaultThemeColors.pinCodeInActiveColor,
          activeColor: DefaultThemeColors.pinCodeActiveColor,
          fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 10),
        ),
        cursorColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        //errorAnimationController: errorController,
        controller: widget.pinCodeController,
        keyboardType: TextInputType.number,
        onCompleted: (v) {
          debugPrint("Completed $v");
        },
        onChanged: (value) {
          debugPrint(value);
          setState(() {
            widget.codeText = value;
          });
        },
        beforeTextPaste: (text) {
          debugPrint("Allowing to paste $text");
          return true;
        },
      ),
    );
  }
}
