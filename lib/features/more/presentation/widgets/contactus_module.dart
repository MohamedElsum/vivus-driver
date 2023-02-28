import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../UIHelpers/app_theme.dart';

class ContactusModule extends StatelessWidget {
  final String icon;
  final String title;

  const ContactusModule({
    super.key,
    required this.icon,
    required this.title,
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
              style: FontTextStyle.contactusModuleText,
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
