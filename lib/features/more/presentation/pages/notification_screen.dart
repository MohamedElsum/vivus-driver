import 'package:flutter/material.dart';
import 'package:vivus_driver/baseModels/notification.dart';
import 'package:vivus_driver/constants.dart';
import 'package:vivus_driver/features/more/presentation/widgets/modules_details_header.dart';
import 'package:vivus_driver/features/more/presentation/widgets/notification_item.dart';
import '../../../../UIHelpers/images.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<NotificationModel> notifications = [
      NotificationModel(
        desc:
            'Hello and welcome to the Vivos team,On this page, you will receive notifications from the administration in case Complaints, alerts, rewards or official holidays We wish you good luck!',
        timeFrom: 'Just now',
      ),
      NotificationModel(
        desc: 'Your phone number 01013943669 has been confirmed',
        timeFrom: '2hr',
      ),
      NotificationModel(
        desc:
        'Hello and welcome to the Vivos team,On this page, you will receive notifications from the administration in case Complaints, alerts, rewards or official holidays We wish you good luck!',
        timeFrom: 'Just now',
      ),
      NotificationModel(
        desc: 'Your phone number 01013943669 has been confirmed',
        timeFrom: '2hr',
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const ModulesDetailsHeader(
            icon: Images.notify,
            title: 'Notifications',
          ),
          SizedBox(
            height: 35.getHeight(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) => NotificationItem(
                timeFrom: notifications[index].timeFrom,
                desc: notifications[index].desc,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
