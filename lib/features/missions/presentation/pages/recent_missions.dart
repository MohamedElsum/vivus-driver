import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/baseModels/recentmission.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/mission_header.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/recent_mission_item.dart';
import '../../../../UIHelpers/images.dart';

class RecentMissions extends StatelessWidget {
  const RecentMissions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<RecentMission> recentMissions = [
      RecentMission(
        time: '03:40  ',
        category: 'Plastic',
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
        date: '30/3/2022',
      ),
      RecentMission(
        time: '03:40  ',
        category: 'Plastic',
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
        date: '30/3/2022',
      ),
      RecentMission(
        time: '03:40  ',
        category: 'Plastic',
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
        date: '30/3/2022',
      ),
      RecentMission(
        time: '03:40  ',
        category: 'Plastic',
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
        date: '30/3/2022',
      ),
      RecentMission(
        time: '03:40  ',
        category: 'Plastic',
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
        date: '30/3/2022',
      ),
      RecentMission(
        time: '03:40  ',
        category: 'Plastic',
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
        date: '30/3/2022',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MissionHeader(
              title: 'Recent Missions',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recentMissions.length,
                itemBuilder: (context, index) => RecentMissionItem(
                  address: recentMissions[index].address,
                  category: recentMissions[index].category,
                  date: recentMissions[index].date,
                  time: recentMissions[index].time,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
