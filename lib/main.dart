import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:settingtask/View/Customer_Support/chatBand4.dart';
import 'package:settingtask/View/Customer_Support/chatband5.dart';
import 'package:settingtask/View/Pages/setting.dart';
import 'View/Rating System/rating_Navigation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),

        home: const rating_Ngavigation(),
      );
    }
    );
  }
}

