import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/constants.dart';
import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class RowRecentMissionItem extends StatelessWidget {
  final String icon;
  final String text;

  const RowRecentMissionItem({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(
          width: 7.getWidth(),
        ),
        Text(
          text,
          style: FontTextStyle.locationDetails,
        ),
      ],
    );
  }
}
