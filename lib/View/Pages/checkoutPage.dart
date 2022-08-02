import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settingtask/Reusable/Custom_widget/listtile.dart';
import '../../Reusable/color_utils/color_utils.dart';
import '../Customer_Support/customWidget.dart';
import 'checkoutPage1.dart';

enum Payment { Upi, Netbanking, Paypal }

class checkout_Page extends StatefulWidget {
  const checkout_Page({Key? key}) : super(key: key);

  @override
  State<checkout_Page> createState() => _checkout_PageState();
}

class _checkout_PageState extends State<checkout_Page> {
  final Payment _site = Payment.Upi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar: Custom_appBar( "Payments", context),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Select payment option',
                            style: TextStyle(
                                color: hexStringToColor("#333333"),
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                          ),
                          Icon(Icons.info_outline,
                              size: 18,
                              color: hexStringToColor('#828282'))
                        ],
                      ),
                      SizedBox(
                        height: 13.5.h,
                      ),
                      Column(children: [
                        Text(
                      'Cards debit/credit',
                      style: TextStyle(
                        color: hexStringToColor("#828282"),
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                        ),
                        SizedBox(
                      height: 13.5.h,
                        ),
                      ]),
                      SizedBox(
                        width: 345.w,
                        height: 184.h,
                        child: Image.asset(
                          'asserts/Image/img_2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 345.w,
                        height: 184.h,
                        child: Image.asset(
                          'asserts/Image/img_2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Swipe left on card detail for more actions',
                            style: TextStyle(
                              color: hexStringToColor("#828282"),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 13.5.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                                primary: hexStringToColor('#FFFFFF'),
                                side: BorderSide(
                                  width: 1.0.w,
                                  color: hexStringToColor("#E0E0E0"),
                                )),
                            child: const Text(
                              'Add new card',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const checkoutPage1()));
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Other payment option',
                            style: TextStyle(
                              color: hexStringToColor("#333333"),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2,
                          ),
                          Icon(
                            Icons.info_outline,
                            size: 18,
                            color: hexStringToColor('#828282'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 13.5.h,
                      ),
                      Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(0.0),

                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0.r)),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                  leading: Radio(
                                      value: Payment,
                                      groupValue: _site,
                                      onChanged: (Payment) {}),
                                  title: const Text(
                                    "Upi",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  trailing: SizedBox(
                                      width: 35.w,
                                      height: 24.h,
                                      child: Image.asset(
                                          'asserts/Image/g-pay-.jpg'))),
                              ListTile(
                                leading: Radio(
                                    value: Payment.Netbanking,
                                    groupValue: _site,
                                    onChanged: (Payment) {}),
                                title: Text("Net Banking",
                                    style: TextStyle(fontSize: 12.sp)),
                                trailing: Container(
                                    width: 35.w,
                                    height: 24.h,
                                    color: Colors.blue,
                                    child:
                                        Image.asset('asserts/Image/img_1.png')),
                              ),
                              ListTile(
                                leading: Radio(
                                    value: Payment.Paypal,
                                    groupValue: _site,
                                    onChanged: (Payment) {}),
                                title: const Text("PayPal",
                                    style: TextStyle(fontSize: 12)),
                                trailing: Container(
                                    width: 35.w,
                                    height: 24.h,
                                    color: Colors.white,
                                    child:
                                        Image.asset('asserts/Image/img_3.png')),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 50.h,
                      ),

                    ]))),
      bottomNavigationBar: bottomNavigaionPayment((){})
    );
  }
}
