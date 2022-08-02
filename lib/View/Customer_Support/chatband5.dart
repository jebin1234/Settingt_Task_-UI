import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:settingtask/View/Customer_Support/chatBand4.dart';
import 'package:settingtask/View/Customer_Support/customWidget.dart';
import '../../Reusable/color_utils/color_utils.dart';

class chatband5 extends StatefulWidget {
  const chatband5({Key? key}) : super(key: key);

  @override
  State<chatband5> createState() => _chatband5State();
}

class _chatband5State extends State<chatband5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 86.h,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const chatBand4()));
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
          ),
          leadingWidth: 10.w,
          titleSpacing: 10,
          title: ListTile(
            leading: Container(
                width: 40.w,
                height: 40.h,
                padding: EdgeInsets.all(4),
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
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.grey),
                  child: const Center(
                      child: Text('Offline',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))),
                ),
                Text('Lens Kart',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
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
          child: Container(
            margin: const EdgeInsets.all(10),
            // padding:  EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 500.h,
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[50], //hexStringToColor('#F2994A')
                  ),
                  child: Center(
                    child: ListTile(
                        title: Text(
                          'Request callback',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orangeAccent)),
                        ),

                        // title: const Text('Request callback',
                        //     style: TextStyle(
                        //         fontFamily: 'Poppins',
                        //         fontSize: 12,
                        //         fontWeight: FontWeight.w600,
                        //         color: Colors.orangeAccent)),
                        subtitle: const Text(
                            'customer service is currently offline, request callback',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16,
                            ))),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigationBar());
  }
}
