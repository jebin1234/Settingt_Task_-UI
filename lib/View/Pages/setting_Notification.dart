import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Reusable/Custom_widget/listtile.dart';
import '../../Reusable/color_utils/color_utils.dart';

class setting_Notification extends StatefulWidget {
  const setting_Notification({Key? key}) : super(key: key);

  @override
  State<setting_Notification> createState() => _setting_NotificationState();
}

class _setting_NotificationState extends State<setting_Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Custom_appBar("Notification", context),
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '     Push Notification',
                      style: TextStyle(
                          color: hexStringToColor("#828282"),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Switchlisttile('Pause all', 'Pause all push notifications',
                        true, () {}),
                    Text(
                      '      Social Listening',
                      style: TextStyle(
                          color: hexStringToColor("#828282"),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Switchlisttile('Platform internal conversation',
                        'Community Guildlines', false, () {}),
                    Switchlisttile('Platform external conversation',
                        'Community Guildlines', true, () {}),
                    Text(
                      '      Marketing Campaign',
                      style: TextStyle(
                        color: hexStringToColor("#828282"),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    Switchlisttile('Contributors requests',
                        'Community Guildlines', true, () {}),
                    Switchlisttile(
                        'Content posted', 'Community Guildlines', false, () {}),
                    Switchlisttile('Shipments related', 'Community Guildlines',
                        true, () {}),
                    Switchlisttile('Post engagement updates',
                        'Community Guildlines', true, () {}),
                    Switchlisttile('Contributor accepted',
                        'Community Guildlines', true, () {}),
                    Switchlisttile(
                        'Remainders', 'Community Guildlines', false, () {}),
                    Switchlisttile('Unrecognised logins',
                        'Community Guildlines', true, () {}),
                  ])),
        )));
  }
}
