import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vivus_driver/UIHelpers/app_theme.dart';
import 'package:vivus_driver/UIHelpers/images.dart';

class MoreModules extends StatelessWidget {
  final String icon;
  final String title;

  const MoreModules({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            leading: SvgPicture.asset(icon),
            title: Text(
              title,
              style: FontTextStyle.moreModulesText,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: DefaultThemeColors.checkboxColor,
              size: 20,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 35),
          child: const Divider(
            thickness: 1,
            color: Color.fromRGBO(104, 104, 104, 0.5),
          ),
        ),
      ],
    );
  }
}
