import 'package:flutter/material.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/UIHelpers/images.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/more/presentation/widgets/notification_body.dart';

class NotificationItem extends StatelessWidget {
  final String timeFrom;
  final String desc;

  const NotificationItem({
    super.key,
    required this.timeFrom,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NotificationBody(
          timeFrom: timeFrom,
          desc: desc,
        ),
        Positioned(
          left: 13.getWidth(),
          top: -10.getHeight(),
          child: const CircleAvatar(
            radius: 25,
            backgroundColor: DefaultThemeColors.missionLocationDetails,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: DefaultThemeColors.missionLocationDetails,
              backgroundImage: AssetImage(Images.notificationlogo),
            ),
          ),
        ),
      ],
    );
  }
}
