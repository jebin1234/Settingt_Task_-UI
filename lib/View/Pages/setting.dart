import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settingtask/View/Pages/about_Page.dart';
import 'package:settingtask/View/Pages/helpAndSupport.dart';
import 'package:settingtask/View/Pages/payment_Page.dart';
import 'package:settingtask/View/Pages/privacy.dart';
import 'package:settingtask/View/Pages/setting_Notification.dart';
import 'package:settingtask/View/Pages/terms_And_Condition.dart';
import '../../Reusable/Custom_widget/listtile.dart';
import '../../Reusable/color_utils/color_utils.dart';
import 'alertBox.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Custom_appBar("Settings", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'General',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5.h),
              Container(
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(2.0),

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                ),
                child: Column(
                  children: [
                    listTile('Profile', 'Summary, Edit Profile', () {}),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile('How it works', 'Campaign', () {}),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile(
                        'Screen Cast', 'Connect to an external device', () {}),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile('Configure notification', 'Community Guidelines',
                        () {}),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile('Help and Support', 'FAQ, Support', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const helpAndSupport()));
                    }),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile('Privacy policy', 'Company privacy policy', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const privacy()));
                    }),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile('Terms and Condition', 'Terms of use', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const termsAndCondition()));
                    }),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile('Share app',
                        'Invite your friends or favourite influencers', () {}),
                    const Divider(
                      thickness: 1,
                    ),
                    listTile('About', 'Community Guidelines', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const about_Page()));
                    }),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'Message Center',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                    color: Colors.black87
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(2.0),
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                  ),
                  child: Column(
                    children: [
                      listTile('Notifications view',
                          'Social update, Content, Comment', () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const setting_Notification()));
                      }),
                      const Divider(
                        thickness: 1,
                      ),
                      listTile('Action center view',
                          'All the requested actions will be listed', () {}),
                    ],
                  )),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'Payment and delivery',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(2.0),

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                ),
                child:
                    listTile('Payments', 'Bank details, Payment methods', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const payment_Page()));
                }),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(2.0),
                height: 50.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, elevation: 0),
                    onPressed: () {
                      ConfirmDialog(context);
                    },
                    child: Text('Logout',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: hexStringToColor('#EB5757')))),

                // ListTile(
                //   title: Center(
                //       child: Text('Logout',
                //           style: TextStyle(
                //               fontFamily: 'Poppins',
                //               fontSize: 12.sp,
                //               color: hexStringToColor('#EB5757')))),
                //   onTap: () {
                //     ConfirmDialog(context);
                //   },
                // )
              )
            ],
          ),
        ),
      ),
    );
  }
}
