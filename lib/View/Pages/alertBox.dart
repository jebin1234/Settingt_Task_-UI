import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Reusable/color_utils/color_utils.dart';


enum ConfirmAction { Logout, Cancel }

Future ConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: hexStringToColor('#333333'),
        title: Row(
          children: [
            const Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 160.w,),

            Container(
              width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(20.r))
                ),
                child: IconButton(onPressed: (){ Navigator.of(context).pop(ConfirmAction.Logout);},
                    icon: const Icon(Icons.close,color: Colors.white,size: 12,)))
          ],
        ),
        content: const Text(
          'Are you sure you want to logout \n from this account ?',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[

          SizedBox(
            width: 135.w,
            height: 40.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: hexStringToColor('#EB5757'),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
              width: 135.w,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    side: BorderSide(
                      width: 2.0.w,
                      color: Colors.white,
                    )),
                child: const Text(
                  'cancel',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop(ConfirmAction.Logout);
                },
              ))
        ],
      );
    },
  );
}
