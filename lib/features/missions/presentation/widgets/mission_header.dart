import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/constants.dart';

import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class MissionHeader extends StatelessWidget {
  final String title;

  const MissionHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.getHeight(),
        ),
        SvgPicture.asset(Images.recentlogo),
        SizedBox(
          height: 7.getHeight(),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            title,
            style: FontTextStyle.recentMissionsText,
          ),
        ),
        SizedBox(
          height: 35.getHeight(),
        ),
      ],
    );
  }
}
