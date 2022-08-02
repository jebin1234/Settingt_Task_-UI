import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settingtask/Reusable/Custom_widget/listtile.dart';
import 'package:settingtask/View/Customer_Support/customWidget.dart';
import 'package:settingtask/View/Pages/checkoutPage.dart';

import '../../Reusable/color_utils/color_utils.dart';

class checkoutPage1 extends StatefulWidget {
  const checkoutPage1({Key? key}) : super(key: key);

  @override
  State<checkoutPage1> createState() => _checkoutPage1State();
}

class _checkoutPage1State extends State<checkoutPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Custom_appBar("Payments", context),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Details',
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Card holder name',
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            labelText: "Gaurav taneja",
                            labelStyle: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: Container(
                                width: 34.w,
                                height: 24.h,
                                margin: const EdgeInsets.all(10),
                                color: Colors.blue,
                                child: Image.asset('asserts/Image/img_1.png')),
                            labelText: "0012 3456 7890 1122",
                            labelStyle: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Expiry date',
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 74.w,
                            height: 42.h,
                            child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    labelText: "02/22",
                                    labelStyle: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500))),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 92.w,
                            height: 42.h,
                            child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    labelText: "CVC/CVV",
                                    labelStyle: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500))),
                          )
                        ],
                      ),
                    ]))),
        bottomNavigationBar: Container(
          height: 100,
          color: Colors.transparent,
          child: Center(
            child: Container(
              width: 380,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(5.0.r)),
              ),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const checkout_Page()));
                  },
                  child: const Text("Save Card")),
            ),
          ),
        ));
  }
}
