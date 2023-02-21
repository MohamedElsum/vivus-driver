import 'package:flutter/material.dart';
import 'package:vivus_driver/constants.dart';
import '../../../../UIHelpers/app_theme.dart';

class TextFieldTitle extends StatelessWidget {
  final String title;

  const TextFieldTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(
        left: 30.getWidth(),
      ),
      child: Text(
        title,
        style: FontTextStyle.phoneNumber,
      ),
    );
  }
}
