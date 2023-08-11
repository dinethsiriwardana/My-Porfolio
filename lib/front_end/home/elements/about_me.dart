import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutMe {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();

  Widget aboutMeBlock() {
    bool isMobi = Device.screenType == ScreenType.mobile ? true : false;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: isMobi ? 20 : 30,
          ),
          blockElement.hedText("ABOUT ME", isMobi ? 7 : 2),
          SizedBox(
            height: isMobi ? 5 : 20,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: isMobi ? 10 : 30.0,
                right: isMobi ? 10 : 30.0,
              ),
              child: blockElement.subText(
                  "I am a self-motivated, quick learner, and dedicated person committed to improving my skills and abilities,\nwith a passion for creative\nproblem-solving, leadership, and\npressure-handling.",
                  isMobi ? 4 : 1.2)),
          SizedBox(
            height: isMobi ? 5 : 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 400,
            height: 1,
            color: uiColors.darkblue.withOpacity(0.2),
          ),
          SizedBox(
            height: isMobi ? 5 : 10,
          ),
          blockElement.hedText("What I use", isMobi ? 4.2 : 1.3),
          SizedBox(
            height: isMobi ? 5 : 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              blockElement.programmingLicon('flutter'),
              blockElement.programmingLicon('laravel'),
            ],
          ),
          SizedBox(
            height: isMobi ? 5 : 10,
          ),
          blockElement.hedText("Everything I know", isMobi ? 4.2 : 1.3),
          SizedBox(
            height: isMobi ? 5 : 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              blockElement.programmingLicons('bootstrap'),
              blockElement.programmingLicons('node'),
              blockElement.programmingLicons('dotnet'),
              blockElement.programmingLicons('slim'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              blockElement.programmingLicons('html'),
              blockElement.programmingLicons('ts'),
              blockElement.programmingLicons('php'),
              blockElement.programmingLicons('jq'),
              blockElement.programmingLicons('dart'),
              blockElement.programmingLicons('java'),
              blockElement.programmingLicons('py'),
              blockElement.programmingLicons('go'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              blockElement.programmingLicons('figma'),
              blockElement.programmingLicons('postman'),
              blockElement.programmingLicons('firebase'),
              blockElement.programmingLicons('sql'),
              blockElement.programmingLicons('mongo'),
            ],
          ),
          isMobi ? SizedBox(height: 20) : SizedBox(height: 0),
        ],
      ),
    );
  }
}
