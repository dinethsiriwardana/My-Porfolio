import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Education {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();

  Widget eduBlock() {
    bool isMobi = Device.screenType == ScreenType.mobile ? true : false;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: isMobi ? 20 : 30,
          ),
          Align(
              alignment: Alignment.center,
              child: blockElement.hedText("EDUCATION", isMobi ? 7 : 2)),
          SizedBox(
            height: isMobi ? 5 : 20,
          ),
          blockElement.singleDetailsBlock(
            "Jul 2021 - Present",
            "University of Ruhuna",
            "Bachelor's degree",
            "Information and Communication Technology (Hon)",
          ),
          blockElement.singleDetailsBlock(
            "Apr 2011 - Aug 2019",
            "Mayurapada C.C.",
            "Ordinary & Advanced Levels ",
            "A/L - Technology Stream",
          ),
          Padding(
            padding: isMobi
                ? EdgeInsets.fromLTRB(15.0, 5, 15, 5)
                : EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("KodeKloud", isMobi ? 5 : 1.5),
                blockElement.subText("Kubernetes - Level 1", isMobi ? 3.5 : 1),
                blockElement.subText(
                    "Docker - Level 1(KodeKloud)", isMobi ? 3.5 : 1),
              ],
            ),
          ),
          Padding(
            padding: isMobi
                ? EdgeInsets.fromLTRB(15.0, 5, 15, 5)
                : EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Linkedin Learning", isMobi ? 5 : 1.5),
                blockElement.subText("Prompt Engineering", isMobi ? 3.5 : 1),
                blockElement.subText(
                    "Learning GitHub Actions", isMobi ? 3.5 : 1),
                blockElement.subText(
                    "Git Essential Training", isMobi ? 3.5 : 1),
              ],
            ),
          ),
          Padding(
            padding: isMobi
                ? EdgeInsets.fromLTRB(15.0, 5, 15, 5)
                : EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Postman", isMobi ? 5 : 1.5),
                blockElement.subText("Postman API Fundamentals Student Expert",
                    isMobi ? 3.5 : 1),
                blockElement.subText("Postman API Tester", isMobi ? 3.5 : 1),
              ],
            ),
          ),
          Padding(
            padding: isMobi
                ? EdgeInsets.fromLTRB(15.0, 5, 15, 5)
                : EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Udemy", isMobi ? 5 : 1.5),
                blockElement.subText("Flutter And Firebase", isMobi ? 3.5 : 1),
                blockElement.subText("Three.js Basics", isMobi ? 3.5 : 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
