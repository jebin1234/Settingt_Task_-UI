import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settingtask/View/Pages/payment_Page.dart';
import '../../Reusable/Custom_widget/listtile.dart';
import '../../Reusable/color_utils/color_utils.dart';

class helpAndSupport extends StatefulWidget {
  const helpAndSupport({Key? key}) : super(key: key);

  @override
  State<helpAndSupport> createState() => _helpAndSupportState();
}

class _helpAndSupportState extends State<helpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Custom_appBar("Help and support", context),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Support',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0.r)),
                          ),
                          child: Column(
                            children: [
                              relistTile('I need help', () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const payment_Page()));
                              }),
                              const Divider(
                                thickness: 1,
                              ),
                              relistTile('I have safety concern', () {}),
                              const Divider(
                                thickness: 1,
                              ),
                              relistTile('I have  privacy question', () {}),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.all(1.0),
                          padding: const EdgeInsets.all(1.0),
                          height: 75.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0.r)),
                          ),
                          child: listTile('Customer support',
                              'Chat with 1000x customer support', () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const payment_Page()));
                          })),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                        'Faq',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0.r)),
                          ),
                          child: ListTile(
                            title: Text("Faq 1",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: hexStringToColor("#333333"))),
                            subtitle: Text(
                                "PepsiCo products are enjoyed by consumers more\n"
                                "than one billion times a day in more than 200\n"
                                "countries and territories around the world. PepsiCo's\n"
                                "product portfolio includes a wide range of enjoyable\n"
                                "foods and beverages, including 23 brands that generate more than"
                                "'\$1 billion each in estimated \nannual retail sales.",
                                style: TextStyle(
                                    fontFamily: 'Poppins-Regular',
                                    fontSize: 12,
                                    color: hexStringToColor("#000000"),
                                    fontWeight: FontWeight.w400)),
                            trailing: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                            onTap: () {},
                          )

                          // listTile('Faq 1', ("PepsiCo products are enjoyed by consumers more\n "
                          //     "than one billion times a day in more than 200\n "
                          //     "countries and territories around the world. PepsiCo's\n"
                          //     " product portfolio includes a wide range of enjoyable\n "
                          //     "foods and beverages, including 23 brands that generate more than "
                          //     "'\$1 billion each in estimated \n annual retail sales.,"), (){})
                          ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0.r)),
                          ),
                          child: relistTile2('Faq 2', () {})),
                      Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0.r)),
                          ),
                          child: relistTile2('Faq 3', () {}))
                    ]))));
  }
}
