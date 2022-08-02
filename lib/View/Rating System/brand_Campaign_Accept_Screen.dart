import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class brand_Campaign_Accept_Screen extends StatefulWidget {
  const brand_Campaign_Accept_Screen({Key? key}) : super(key: key);
  @override
  State<brand_Campaign_Accept_Screen> createState() =>
      _brand_Campaign_Accept_ScreenState();
}

class _brand_Campaign_Accept_ScreenState
    extends State<brand_Campaign_Accept_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 235.11.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.indigoAccent, Colors.indigo]),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "asserts/Image/img_4.png",
                  width: 127.53.w,
                  height: 74.11.h,
                ),
                const Text(
                  'Thank you',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                 const Text(
                  'for taking your valuable time to rate my work',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            )),
          ),
          Container(
            //alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            height: 220.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50.w,
                      height: 50.h,
                      child: CircleAvatar(
                        child: Image.asset('asserts/Image/avatar.png'),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      children: [
                        const Text('    Camila Diana',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 12,
                            ),
                            Text('Mexico, US',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black))
                          ],
                        ),
                        Image.asset(
                          'asserts/Image/xfactor.png',
                          width: 50.w,
                          height: 17.h,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                const Text('Draft submitted for revision',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                SizedBox(height: 6.h),
                const Text(
                    'Working with you is a great pleasure. I spent a significant'
                    ' amount of time researching your brand,'
                    ' Dunzo and was very enthusiastic about this adventure.'
                    ' I’m excited to continue working with you.',
                    maxLines: 4,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
