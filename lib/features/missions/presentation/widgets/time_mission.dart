import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/constants.dart';

import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class MissionTime extends StatelessWidget {
  String time;

  MissionTime({
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Images.time),
        SizedBox(
          width: 5.getWidth(),
        ),
        RichText(
          text: TextSpan(
            style: FontTextStyle.textSpan,
            children: [
              TextSpan(
                text: '$time ',
                style: FontTextStyle.time,
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.top,
                child: Text(
                  'pm',
                  style: FontTextStyle.timeZone,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
