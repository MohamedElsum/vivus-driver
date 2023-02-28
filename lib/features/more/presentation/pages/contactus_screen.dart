import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/more/presentation/widgets/contactus_module.dart';
import 'package:vivus_driver/features/more/presentation/widgets/modules_details_header.dart';
import '../../../../UIHelpers/app_theme.dart';
import '../../../../UIHelpers/images.dart';

class ContactusScreen extends StatelessWidget {
  const ContactusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ModulesDetailsHeader(
            icon: Images.contact,
            title: 'Contact Us',
          ),
          SizedBox(
            height: 80.getHeight(),
          ),
          const ContactusModule(
            icon: Images.phone,
            title: 'Contact us via Phone',
          ),
          const ContactusModule(
            icon: Images.facebook,
            title: 'Contact us via Facebook',
          ),
          const ContactusModule(
            icon: Images.whatsapp,
            title: 'Contact us via whats app',
          ),
        ],
      ),
    );
  }
}
