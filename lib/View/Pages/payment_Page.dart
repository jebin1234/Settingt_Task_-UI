import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settingtask/Reusable/Custom_widget/listtile.dart';
import 'package:settingtask/View/Pages/checkoutPage1.dart';
import '../../Reusable/color_utils/color_utils.dart';
import '../Customer_Support/customWidget.dart';

enum Payment { Upi, Netbanking, Paypal }

class payment_Page extends StatefulWidget {
  const payment_Page({Key? key}) : super(key: key);

  @override
  State<payment_Page> createState() => _payment_PageState();
}

class _payment_PageState extends State<payment_Page> {
  Payment _site = Payment.Upi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar: Custom_appBar("Payments", context),

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
                              fontWeight: FontWeight.w600
                            ),
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
                      Column(
                        children: [
                          Text(
                            'Cards debit/credit',
                            style: TextStyle(
                              color: hexStringToColor("#828282"),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(
                            height: 13.5.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(

                                primary: hexStringToColor('#FFFFFF'),
                                elevation: 0,
                                side: BorderSide(
                                  width: 1.0.w,
                                  color: hexStringToColor("#E0E0E0"),
                                )),
                            child: const Text(
                              'Add new card',
                              style: TextStyle(color: Colors.blue),
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
                      SizedBox(height: 23.h,),
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
                            width:  MediaQuery.of(context).size.width/2,
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
                                  title: Text(
                                    "Upi",
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
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
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500)),
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
                                title: Text("PayPal",
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500)),
                                trailing: Container(
                                    width: 35.w,
                                    height: 24.h,
                                    color: Colors.white,
                                    child:
                                        Image.asset('asserts/Image/img_3.png')),
                              ),
                            ],
                          )),


                    ]))),
      bottomNavigationBar: bottomNavigaionPayment(
          (){}
      ),
    );
  }
}
