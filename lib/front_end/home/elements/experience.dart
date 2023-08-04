import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';

class Experience {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
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
              child: blockElement.hedText("EXPERIENCE", 2)),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.hedText("Also I'm a", 1.5),
                blockElement.subText("Graphic Designer since 2017", 1),
                blockElement.subText("Photographer since 2018", 1),
                blockElement.subText(
                    "Mixing and mastering engineer 2018 - 2022", 1),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
