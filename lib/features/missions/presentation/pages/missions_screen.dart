import 'package:flutter/material.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/mission_item.dart';
import '../../../../baseModels/mission.dart';
import '../widgets/mission_header.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Mission> missions = [
      Mission(
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
      ),
      Mission(
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
      ),
      Mission(
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
      ),
      Mission(
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
      ),
      Mission(
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
      ),
      Mission(
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
      ),
      Mission(
        address: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MissionHeader(
              title: 'Missions',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: missions.length,
                itemBuilder: (context, index) => MissionItem(
                  address: missions[index].address,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
