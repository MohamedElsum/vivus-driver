import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/constants.dart';

import '../../../../UIHelpers/images.dart';

class MissionItem extends StatelessWidget {
  final String address;

  const MissionItem({
    super.key,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: DefaultThemeColors.missionItemColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                Images.location,
                colorFilter: const ColorFilter.mode(
                    DefaultThemeColors.checkboxColor, BlendMode.srcIn),
              ),
              SizedBox(
                width: 12.getWidth(),
              ),
              Expanded(
                child: Text(
                  address,
                  style: FontTextStyle.missionLocationDetails,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: DefaultThemeColors.checkboxColor,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
