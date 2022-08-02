import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:settingtask/View/Rating%20System/brand_Campaign_Accept_Screen.dart';

import '../../Reusable/color_utils/color_utils.dart';

class rating_Ngavigation extends StatefulWidget {
  const rating_Ngavigation({Key? key}) : super(key: key);

  @override
  State<rating_Ngavigation> createState() => _rating_NgavigationState();
}

class _rating_NgavigationState extends State<rating_Ngavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Popup"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            BottomsheetForChooseFile(context);
          },
          child: const Text("Please enter the Rating"),
        ),
      ),
    );
  }
}

BottomsheetForChooseFile(context) {
  showMaterialModalBottomSheet(
    expand: false,
    context: context,
    builder: (context) => Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 39.w,
              height: 3.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: const Color(0xff7e7e7e),
              ),
            ),
            SizedBox(
              width: 375.w,
              height: 399.h,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                          width: 147.51.w,
                          height: 120.62.h,
                          child: Image.asset(
                            'asserts/Image/rating.png',
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text('Your opinion matter to us!',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                          "If you enjoy using 1000X app, would you\n"
                          " mind rating us on App store, then ?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                      RatingBar.builder(
                          itemSize: 37,
                          unratedColor: hexStringToColor('#E6E9F8'),
                          direction: Axis.horizontal,
                          itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          onRatingUpdate: (val) {}),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                          width: 340.w,
                          height: 40.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const brand_Campaign_Accept_Screen()));
                            },
                            child: Text("Submit",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                          width: 340.w,
                          height: 40.h,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: const BorderSide(
                                    width: 2.0,
                                    color: Colors.black26,
                                  )),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Not Now",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
