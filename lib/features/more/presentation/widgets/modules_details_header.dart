import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/constants.dart';
import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class ModulesDetailsHeader extends StatelessWidget {
  final String title;
  final String icon;

  const ModulesDetailsHeader({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.getHeight(),
      decoration: const BoxDecoration(
        color: DefaultThemeColors.missionItemColor,
        image: DecorationImage(
          image: AssetImage(Images.patternpng),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(280, 200),
          bottomRight: Radius.elliptical(280, 200),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20.getHeight(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: const ColorFilter.mode(
                  DefaultThemeColors.missionLocationDetails,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(
                width: 16.getWidth(),
              ),
              Text(
                title,
                style: FontTextStyle.contactusHeader,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
