import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/UIHelpers/images.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/more/presentation/widgets/logout_button.dart';
import 'package:vivus_driver/features/more/presentation/widgets/more_modules.dart';
import 'package:vivus_driver/router/routes_constants.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330.getHeight(),
              child: Stack(
                children: [
                  Container(
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
                  ),
                  Positioned(
                    top: 160.getHeight(),
                    left: 149.getWidth(),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(Images.profile),
                      radius: 60,
                    ),
                  ),
                  Positioned(
                    bottom: 40.getHeight(),
                    right: 150.getWidth(),
                    child: Container(
                      width: 25.getWidth(),
                      height: 25.getHeight(),
                      decoration: BoxDecoration(
                        color: DefaultThemeColors.editButtonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(Images.edit),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'ElSuM',
              style: FontTextStyle.username,
            ),
            SizedBox(
              height: 50.getHeight(),
            ),
            const MoreModules(
              icon: Images.profileModule,
              title: 'Profile',
            ),
            InkWell(
              onTap: () {
                Get.toNamed(RoutesConstants.notificationScreen);
              },
              child: const MoreModules(
                icon: Images.notify,
                title: 'Notifications',
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(RoutesConstants.contactusScreen);
              },
              child: const MoreModules(
                icon: Images.contact,
                title: 'Contact Us',
              ),
            ),
            const MoreModules(
              icon: Images.setting,
              title: 'Settings',
            ),
            SizedBox(
              height: 40.getHeight(),
            ),
            const LogoutButton(),
            SizedBox(
              height: 23.getHeight(),
            ),
            Text(
              'APP Version. 01.0.0.0',
              style: FontTextStyle.appVersion,
            ),
            SizedBox(
              height: 30.getHeight(),
            ),
          ],
        ),
      ),
    );
  }
}
