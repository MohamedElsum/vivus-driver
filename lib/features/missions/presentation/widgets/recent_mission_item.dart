import 'package:flutter/material.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/recent_mission_item_row.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/time_mission.dart';
import '../../../../UIHelpers/images.dart';

class RecentMissionItem extends StatelessWidget {
  const RecentMissionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        children: [
          const RowRecentMissionItem(
            text: 'Cairo 20 abou bakr elsedek behaind sobhy kabr resturant',
            icon: Images.location,
          ),
          SizedBox(
            height: 15.getHeight(),
          ),
          const RowRecentMissionItem(
            text: 'Plastic',
            icon: Images.category,
          ),
          SizedBox(
            height: 15.getHeight(),
          ),
          Row(
            children: [
              const RowRecentMissionItem(
                text: '30/3/2022',
                icon: Images.calender,
              ),
              SizedBox(
                width: 20.getWidth(),
              ),
              MissionTime(),
            ],
          ),
        ],
      ),
    );
  }
}
