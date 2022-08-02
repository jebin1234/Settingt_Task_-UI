import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:settingtask/View/Customer_Support/chatband5.dart';
import 'package:settingtask/View/Customer_Support/customWidget.dart';
import '../../Reusable/color_utils/color_utils.dart';

class chatBand4 extends StatefulWidget {
  const chatBand4({Key? key}) : super(key: key);

  @override
  State<chatBand4> createState() => _chatBand4State();
}

class _chatBand4State extends State<chatBand4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 86,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const chatband5()));
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
        ),
        leadingWidth: 10.w,
        titleSpacing: 10,
        title: ListTile(
          leading: Container(
              width: 40.w,
              height: 40.h,
              padding: const EdgeInsets.all(4),
              color: hexStringToColor('#F2F2F2'),
              child: Image.asset(
                'asserts/Image/BandMaserlogo.png',
              )),
          title: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 43.w,
                height: 18.h,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.green),
                child: const Center(
                    child: Text('Online',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
              ),
              Text('Customer support',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.grey[600],
                size: 27,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              // first Chat in the chat room
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: hexStringToColor('#F2F2F2')),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                      bottomRight: Radius.circular(15.r)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150.h,
                      width: 229,
                      child: Image.asset(
                        "asserts/Image/chat_cat.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text('Look at how chocho sleep in my arms!',
                        maxLines: 1,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black))),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text('16.46',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              //Second Chat in the chat room
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: hexStringToColor('#F2F2F2')),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 317.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: hexStringToColor('#F2F2F2')),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Row(
                          children: [
                            Container(
                              width: 4.w,
                              height: 52.h,
                              color: Colors.blue[600],
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('You',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600],
                                      )),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text('Can I come over?',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('Of course, let me know if you\'re on your way',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text('16.46',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ))
                    ],
                  )),
              SizedBox(
                height: 26.h,
              ),

              //Third Chat in the chat room
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: hexStringToColor('#F2F2F2')),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                            bottomLeft: Radius.circular(15.r)),
                      ),
                      child: Column(
                        children: [
                          Text("K, I'm on my way",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black))),
                          SizedBox(
                            height: 0.h,
                          ),
                          Text('                16.50· Read',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600],
                              ))
                        ],
                      ))),
              SizedBox(
                height: 30.h,
              ),

              // Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 126.5.w,
                    height: 2.h,
                    color: Colors.grey,
                  ),
                  Text(
                    "Sat, 17/10",
                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 126.5.w,
                    height: 2.h,
                    color: Colors.grey,
                  ),
                ],
              ),

              //Fourth  chat in the chat room
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 159.w,
                      height: 91.h,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: hexStringToColor('#F2F2F2')),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                            bottomLeft: Radius.circular(15.r)),
                      ),
                      child: Column(
                        children: [
                          Image.asset('asserts/Image/voice.png'),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text('                             09.13 · Read',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600],
                              ))
                        ],
                      ))),
              SizedBox(
                height: 14.h,
              ),

              //Fifth chat in the chat room
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: hexStringToColor('#F2F2F2')),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning, did you sleep well?",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text('09.45',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
      //Navigation
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
