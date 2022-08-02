import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:settingtask/Reusable/Custom_widget/listtile.dart';
import '../../Reusable/color_utils/color_utils.dart';


class privacy extends StatelessWidget {
  const privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Custom_appBar("Privacy policy", context),

        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data Policy',
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
                        "Welcome to 1000X!",
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "A Terms & Conditions document for a website is an agreement"
                        "the website makes with its users about how to use the site"
                        "properly, as well as the obligations and responsibilities of each"
                        "party. Websites, especially commercial websites, have a"
                        "portion of the site devoted to Terms & Conditions because it's"
                        "the most important document for letting site users know what"
                        "is expected of them. For owners/operators running any kind of"
                        "business or personal website that allows user interaction, it's a"
                        "good idea to have a clearly laid out document with all the"
                        "Terms & Conditions required.",
                        maxLines: 10,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "One of the primary functions of a Terms & Conditions "
                        "document is to outline what will happen in a variety of "
                        "different possible situations,including if the user breaks the"
                        " rules and must have his/her account terminated. If the user "
                        "goes in knowing what to expect, it is less likely that there will be"
                        " problems between the user and the website down the road.",
                        maxLines: 6,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "The Terms & Conditions document on any website creates a legally binding set of rules for the user, as "
                        "well as, in most cases, the website owner. It's a place to set up expectations for each of the parties and "
                        "ensure that the use of the website runs smoothly for both.",
                        maxLines: 5,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "How to use this document",
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "These Terms & Conditions outline the basic responsibilities for a user to a website,"
                        " including what the user can and can't do, what happens in case of a dispute, and how "
                        "the user's account may be terminated if need be. This document should be used for an owner/operator"
                        " just setting up a new business or personal website, or when an owner/operator wishes to update the "
                        "rules on their current website.",
                        maxLines: 7,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Within this document, the operator can choose several different models for what the website does, such as "
                        "whether it sells products or services, gives professional advice or lets other users post content like pictures, "
                        "videos, or status updates. It also addresses what happens if the user does anything to harm the website like "
                        "violates the intellectual property rights of the owner/operator.",
                        maxLines: 7,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Importantly, in these Terms & Conditions, the owner/operator can choose what state the business is primarily located in,"
                        " which will apply the law of that state to this document.",
                        maxLines: 3,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "After filling out this document, it should be posted to its own separate page on a website. Ideally, that page will be linked"
                        " from the homepage under the phrase 'Terms & Conditions'.",
                        maxLines: 3,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Applicable law",
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Although there is no one set of laws or regulations outlining what must be contained in the Terms & Conditions for a website, website"
                        " terms and care broadly governed under the Indian Contract Act, 1872 and the Information Technology Act, 2000.",
                        maxLines: 4,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        "How to modify the template",
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "You fill out a form. The document is created before your"
                        " eyes as you respond to the questions.",
                        maxLines: 2,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "At the end, you receive it in Word and PDF formats."
                        " You can modify it and reuse it.",
                        maxLines: 2,
                        style: TextStyle(
                            color: hexStringToColor("#333333"),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ]))));
  }
}
