import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Reusable/color_utils/color_utils.dart';

Container bottomNavigationBar() {
  return Container(
    height: 83.45.h,
    color: hexStringToColor('#EAF2FD'),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.blue,
            )),
        Container(
          width: 279.w,
          height: 36.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: Colors.white,
          ),
          child: const TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.0),
            ),
          )),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_voice_outlined,
              color: Colors.blue,
            )),
      ],
    ),
  );
}

Container bottomNavigaionPayment (Function onpress){
  return  Container(
    height: 100,
    color: Colors.transparent,
    child: Center(
      child: Container(
        width: 380,
        height: 40,

        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius:
          BorderRadius.all(Radius.circular(5.0.r)),
        ),

        child: ElevatedButton(
            onPressed: () {
              onpress;
            }, child: const Text("Next")) ,

      ),
    ),          );
}