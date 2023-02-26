import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/recent_mission_item.dart';

import '../../../../UIHelpers/images.dart';

class RecentMissions extends StatelessWidget {
  const RecentMissions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List recentMissions = ['1', '2', '3', '4', '5', '6'];

    return Scaffold(
      body: SafeArea(
        child: Column(
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
                'Recent Missions',
                style: FontTextStyle.recentMissionsText,
              ),
            ),
            SizedBox(
              height: 40.getHeight(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recentMissions.length,
                itemBuilder: (context, index) => RecentMissionItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
