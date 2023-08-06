import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:js' as js;

class Project {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
  Widget projectBlock() {
    bool isMobi = Device.screenType == ScreenType.mobile ? true : false;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.center,
              child: blockElement.hedText("PROJECTS", isMobi ? 7 : 2)),
          const SizedBox(
            height: 15,
          ),
          blockElement.singleDetailsBlock(
            "Jul 2023",
            "Faculty of Technology - UOR",
            "RICIT - 2023",
            isMobi
                ? "Develop Official Website for Ruhuna International Conference on Innovation and Technology 2023"
                : "Develop Official Website for Ruhuna International \nConference on Innovation and Technology 2023",
          ),
          InkWell(
              child: blockElement.singleDetailsBlock(
                "Jun 2023",
                "A University Project",
                "Speed Rent",
                "Website For Car Renting Company With SMS Gateway #Bootstrap #PHP #MySQL",
              ),
              onTap: () {
                js.context.callMethod('open', ['https://speedrent.live']);
                js.context.callMethod(
                    'open', ['https://github.com/dinethsiriwardana/SpeedRent']);
              }),
          blockElement.singleDetailsBlock(
            "May 2023",
            "Mayurapada C.C.",
            "Student Management System",
            "Mayurapada Student, Teachers management System #Flutter #Laravel #SQL",
          ),
          InkWell(
              child: blockElement.singleDetailsBlock(
                "Jan 2022 - Present",
                "Mobile App",
                "Time Tracker",
                "Mobile App for Students to monitor their work time  #flutter #firebase",
              ),
              onTap: () {
                js.context.callMethod('open',
                    ['https://github.com/dinethsiriwardana/Time-Tracker']);
                js.context.callMethod('open', [
                  'https://play.google.com/store/apps/details?id=com.sstudio.timetracker'
                ]);
              }),
        ],
      ),
    );
  }
}
