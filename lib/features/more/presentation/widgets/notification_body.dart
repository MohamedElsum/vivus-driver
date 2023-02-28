import 'package:flutter/material.dart';
import 'package:vivus_driver/constants.dart';

import '../../../../UIHelpers/app_theme.dart';

class NotificationBody extends StatelessWidget {

  final String timeFrom;
  final String desc;

  const NotificationBody({
    super.key,
    required this.timeFrom,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: BoxDecoration(
        color: DefaultThemeColors.missionItemColor,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Text(
                  'Vivus Company',
                  style: FontTextStyle.vivusCompany,
                ),
                SizedBox(
                  width: 4.getWidth(),
                ),
                Text(
                  timeFrom,
                  style: FontTextStyle.notificationTime,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.getHeight(),
          ),
          Container(
            child: Text(
              desc,
              style: FontTextStyle.vivusCompany,
            ),
          ),
        ],
      ),
    );
  }
}
