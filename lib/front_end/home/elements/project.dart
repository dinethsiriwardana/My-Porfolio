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
            "Aug 2024",
            "Mayurapada CC",
            "Advance Level Admission Portal",
            isMobi
                ? "NextJS | MongoDB | Docker | Choreo - Managed 900+ applicants with 99% uptime"
                : "NextJS | MongoDB | Docker | Choreo \n Managed 900+ applicants with 99% uptime",
          ),
          blockElement.singleDetailsBlock(
            "Sep 2024 - Ongoing",
            "Research Project",
            "Wild Rice Locations Identification",
            isMobi
                ? "Flutter | Firebase | Google Map API - Developing a app to map and \nidentify habitats of wild rice relatives in Sri Lanka, \nsetting key conservation priorities to protect biodiversity \nand support sustainable agricultural practices."
                : "Flutter | Firebase | Google Map API \n Developing a app to map and \nidentify habitats of wild rice relatives in Sri Lanka, \nsetting key conservation priorities to protect biodiversity \nand support sustainable agricultural practices.",
          )
        ],
      ),
    );
  }
}
