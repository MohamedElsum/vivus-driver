import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/constants.dart';
import '../../../../UIHelpers/app_theme.dart';

class TextFormInput extends StatelessWidget {
  final bool obscure;
  final String icon;
  final Color color;
  final String hint;
  final String suffix;
  final bool showPassword;
  final TextInputType keyBoardType;

  TextFormInput({
    super.key,
    required this.color,
    required this.icon,
    required this.obscure,
    required this.hint,
    required this.suffix,
    required this.showPassword,
    required this.keyBoardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 382.getWidth(),
      height: 60.getHeight(),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: keyBoardType,
        style: FontTextStyle.textfieldText,
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(
            minWidth: 35.getWidth(),
            minHeight: 35.getHeight(),
            maxWidth: 48.getWidth(),
            maxHeight: 48.getHeight(),
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 35.getWidth(),
            minHeight: 35.getHeight(),
            maxWidth: 48.getWidth(),
            maxHeight: 48.getHeight(),
          ),
          contentPadding: const EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: DefaultThemeColors.textfieldBorder, width: 1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: DefaultThemeColors.textfieldBorder, width: 1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hint,
          isDense: true,
          hintStyle: FontTextStyle.hintText,
          suffixIcon: showPassword
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(suffix),
                )
              : Container(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
