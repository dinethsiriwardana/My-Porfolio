import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';

class Education {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
  Widget eduBlock() {
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
              child: blockElement.hedText("EDUCATION", 2)),
          const SizedBox(
            height: 15,
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
            padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Linkedin Learning", 1.5),
                blockElement.subText("Prompt Engineering", 1),
                blockElement.subText("Learning GitHub Actions", 1),
                blockElement.subText("Git Essential Training", 1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Free Code Camp", 1.5),
                blockElement.subText("Instagram Clone Using Laravel", 1),
                blockElement.subText("Learni TypeScript", 1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Udemy", 1.5),
                blockElement.subText("Flutter And Firebase", 1),
                blockElement.subText("Three.js Basics", 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
