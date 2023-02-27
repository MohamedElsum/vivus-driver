import 'package:flutter/material.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/recent_mission_item_row.dart';
import 'package:vivus_driver/features/missions/presentation/widgets/time_mission.dart';
import '../../../../UIHelpers/images.dart';

class RecentMissionItem extends StatelessWidget {
  String address;
  String category;
  String date;
  String time;

  RecentMissionItem({
    required this.address,
    required this.category,
    required this.time,
    required this.date,
  });

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
          RowRecentMissionItem(
            text: address,
            icon: Images.location,
          ),
          SizedBox(
            height: 15.getHeight(),
          ),
          RowRecentMissionItem(
            text: category,
            icon: Images.category,
          ),
          SizedBox(
            height: 15.getHeight(),
          ),
          Row(
            children: [
              RowRecentMissionItem(
                text: date,
                icon: Images.calender,
              ),
              SizedBox(
                width: 20.getWidth(),
              ),
              MissionTime(
                time: time,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
