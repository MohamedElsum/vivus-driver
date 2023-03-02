import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/constants.dart';

import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class ChangePasswordHeader extends StatelessWidget {
  final String icon;
  final String title;

  const ChangePasswordHeader({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17),
      decoration: BoxDecoration(
        color: DefaultThemeColors.missionItemColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          SizedBox(
            width: 14.getWidth(),
          ),
          Text(
            title,
            style: FontTextStyle.changePassword,
          ),
        ],
      ),
    );
  }
}
