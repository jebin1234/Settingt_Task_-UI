import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../color_utils/color_utils.dart';

ListTile listTile(
  String title,
  String subtitle,
  Function ontapFun,
) {
  return ListTile(
    visualDensity: VisualDensity(vertical: -2),
      title: Text(title,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: hexStringToColor("#333333"))),
      subtitle: Text(subtitle,
          style: TextStyle(
              fontFamily: 'Poppins-Regular',
              fontSize: 11.5,
              color: hexStringToColor("#828282"))),
      trailing:  Icon(Icons.arrow_forward_ios,size: 15.sp,),
      onTap: (){
        ontapFun();
      },
  );
}

ListTile relistTile(
  String title,
  Function ontap,
) {
  return ListTile(
      visualDensity: VisualDensity(vertical: -2),
      title: Text(title,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: hexStringToColor("#333333"))),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 15,
      ),
      onTap: () {
        ontap;
      });
}
ListTile relistTile2(
    String title,
    Function ontap,
    ) {
  return ListTile(
      visualDensity: VisualDensity(vertical: -2),
      title: Text(title,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: hexStringToColor("#333333"))),
      trailing: Icon(
        Icons.keyboard_arrow_down,
        size: 20,
      ),
      onTap: () {
        ontap;
      });
}


ListTile Switchlisttile(
    String title, String subtittle, bool value, Function change) {
  bool isSwitched = value as bool;

  return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: hexStringToColor("#333333"),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
      subtitle: Text(
        subtittle,
        style: TextStyle(
          color: hexStringToColor("#828282"),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 11,
        ),
      ),
      trailing: Container(
        width: 50.w,
        height: 48.h,
        child: FlutterSwitch(
            height: 24.0.h,
            width: 39.48.w,
            padding: 2.0,
            toggleSize: 20.9,
            borderRadius: 16.0.r,
            activeColor: hexStringToColor('#458846'),
            value: isSwitched,
            onToggle: (change) {}),
      ));
}

AppBar Custom_appBar(String title,BuildContext context){
  return  AppBar(
    backgroundColor:Colors.white ,
    leading: IconButton(
      onPressed: () { Navigator.of(context).pop();},
      icon: Icon(
        Icons.arrow_back_ios,
        color: hexStringToColor("#333333"),
        size: 18,
      ),
    ),
    title: Text(title,
      style: TextStyle(
          color: hexStringToColor("#333333"),
          fontFamily: 'Poppins', fontSize: 15,
          fontWeight: FontWeight.w600),
    ),
    leadingWidth: 13.33.w,
  );

}