import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/features/missions/presentation/pages/missions.dart';
import 'package:vivus_driver/features/missions/presentation/pages/recent_missions.dart';
import '../../../../UIHelpers/images.dart';
import '../../../more/presentation/pages/more_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller = PageController(initialPage: 0);
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const [
          RecentMissions(),
          MissionsScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          iconStyle: IconStyle.animated,
        ),
        elevation: 15,
        items: [
          BottomBarItem(
            icon: SvgPicture.asset(
              Images.recentinactive,
              colorFilter: selected == 0
                  ? const ColorFilter.mode(
                      DefaultThemeColors.resendColor, BlendMode.srcIn)
                  : const ColorFilter.mode(
                      DefaultThemeColors.timerTextColor, BlendMode.srcIn),
            ),
            title: Text(
              'Recent',
              style: FontTextStyle.bottomBarNavigationText,
            ),
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              Images.missionsactive,
              colorFilter: selected == 1
                  ? const ColorFilter.mode(
                      DefaultThemeColors.resendColor, BlendMode.srcIn)
                  : const ColorFilter.mode(
                      DefaultThemeColors.timerTextColor, BlendMode.srcIn),
            ),
            title: Text(
              'Missions',
              style: FontTextStyle.bottomBarNavigationText,
            ),
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              Images.moreactive,
              colorFilter: selected == 2
                  ? const ColorFilter.mode(
                      DefaultThemeColors.resendColor, BlendMode.srcIn)
                  : const ColorFilter.mode(
                      DefaultThemeColors.timerTextColor, BlendMode.srcIn),
            ),
            title: Text(
              'More',
              style: FontTextStyle.bottomBarNavigationText,
            ),
          ),
        ],
        hasNotch: false,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.jumpToPage(index);
          });
        },
      ),
    );
  }
}
