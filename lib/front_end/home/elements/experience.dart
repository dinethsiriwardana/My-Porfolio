import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Experience {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
  bool isMobi = Device.screenType == ScreenType.mobile ? true : false;
  Widget expBlock() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.center,
              child: blockElement.hedText("EXPERIENCE", isMobi ? 7 : 2)),
          const SizedBox(
            height: 15,
          ),
          blockElement.singleDetailsBlock(
            "Jan 2020",
            "Freelancer",
            "Software Developer",
            "Web, Mobile and Desktop Application Developer",
          ),
          blockElement.singleDetailsBlock(
            "Jan 2019 - Present",
            "Mayurapada C.C.",
            "Database Adminisrator",
            "Consultant | Developer and Maintaine DBMS",
          ),
          blockElement.singleDetailsBlock(
            "Jan 2024 - Present",
            "Microsoft IT Pro Community",
            "Event Planner",
            "Planning Sessions ",
          ),
          Padding(
            padding: isMobi
                ? EdgeInsets.fromLTRB(15.0, 5, 15, 5)
                : EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Also I'm a", isMobi ? 5 : 1.5),
                blockElement.subText(
                    "Former Top Software Development Voice @ Linkedin",
                    isMobi ? 3.5 : 1),
                blockElement.subText(
                    "Co Editor, Career Circle, Faculty of Technology 2024",
                    isMobi ? 3.5 : 1),
                blockElement.subText(
                    "Vice President, ICT Student’sCircle Faculty of Technology - 2023",
                    isMobi ? 3.5 : 1),
              ],
            ),
          ),
          SizedBox(
            height: isMobi ? 3.5 : 200,
          )
        ],
      ),
    );
  }
}
