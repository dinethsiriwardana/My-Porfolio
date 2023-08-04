import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/front_end/home/elements/about_me.dart';
import 'package:my_portfolio/front_end/home/elements/education.dart';
import 'package:my_portfolio/front_end/home/elements/block/side_block.dart';
import 'package:my_portfolio/front_end/home/elements/experience.dart';
import 'package:my_portfolio/front_end/home/elements/project.dart';

class GetNavController extends GetxController {
  var navIndex = 0.obs;
  var navIndexarr = [0, 0].obs;
  var navOp = 0.0.obs;
  var currentBlock = Rx<Widget>(Align());

  //chaneg navOp
  void changeNavOp(double op) {
    navOp.value = op;
  }

  void changeNavIndex(int index) {
    if (navIndex == index) {
      navIndex.value = 0;
    } else {
      navIndex.value = index;
    }
    changeNavUI();
  }

  void changeNavUI() {
    navOp.value = 0.0;
    Align block = Align();
    ;
    if (navIndex == 1) {
      block = Align(
        alignment: Alignment.centerRight,
        child: SideBlock(
          // block: A,
          block: AboutMe().aboutMeBlock(),
        ),
      );
    } else if (navIndex == 2) {
      block = Align(
        alignment: Alignment.centerRight,
        child: SideBlock(
          // block: A,
          block: Education().eduBlock(),
        ),
      );
    } else if (navIndex == 3) {
      block = Align(
        alignment: Alignment.centerRight,
        child: SideBlock(
          // block: A,
          block: Experience().expBlock(),
        ),
      );
    } else if (navIndex == 4) {
      block = Align(
        alignment: Alignment.centerRight,
        child: SideBlock(
          // block: A,
          block: Project().projectBlock(),
        ),
      );
    } else {
      block = Align();
    }
    currentBlock.value = block;
  }
}
