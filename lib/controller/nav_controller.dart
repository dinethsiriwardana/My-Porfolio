import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/front_end/home/elements/about_me.dart';
import 'package:my_portfolio/front_end/home/elements/education.dart';
import 'package:my_portfolio/front_end/home/elements/block/side_block.dart';
import 'package:my_portfolio/front_end/home/elements/experience.dart';
import 'package:my_portfolio/front_end/home/elements/project.dart';

class GetNavController extends GetxController {
  var navIndexDesktop = 0.obs;
  var navIndexmobi = 1.obs;
  var navIndexarr = [0, 0].obs;
  var navOp = 0.0.obs;
  var currentBlock = Rx<Widget>(Align());
  var currentBlocMobi = Rx<Widget>(Column());

  //chaneg navOp
  void changeNavOp(double op) {
    navOp.value = op;
  }

  //change navIndexmobi
  void changeNavIndexMobi(int index) {
    //check the number >=0 or  <=4
    if (index >= 1 && index <= 4) {
      navIndexmobi.value = index;
    }

    changeNavUIMobi();
  }

  void changeNavUIMobi() {
    navOp.value = 0.0;
    Widget block = const SizedBox();

    if (navIndexmobi == 1) {
      block = SideBlock(
        // block: A,
        block: AboutMe().aboutMeBlock(),
      );
    } else if (navIndexmobi == 2) {
      block = SideBlock(
        // block: A,
        block: Education().eduBlock(),
      );
    } else if (navIndexmobi == 3) {
      block = SideBlock(
        // block: A,
        block: Experience().expBlock(),
      );
    } else if (navIndexmobi == 4) {
      block = SideBlock(
        // block: A,
        block: Project().projectBlock(),
      );
    } else {
      block = const SizedBox();
    }
    currentBlocMobi.value = block;
  }

  void changeNavIndex(int index) {
    if (navIndexDesktop == index) {
      navIndexDesktop.value = 0;
    } else {
      navIndexDesktop.value = index;
    }
    changeNavUI();
  }

  void changeNavUI() {
    navOp.value = 0.0;
    Align block = Align();

    if (navIndexDesktop == 1) {
      block = Align(
        alignment: Alignment.centerRight,
        child: SideBlock(
          // block: A,
          block: AboutMe().aboutMeBlock(),
        ),
      );
    } else if (navIndexDesktop == 2) {
      block = Align(
        alignment: Alignment.centerRight,
        child: SideBlock(
          // block: A,
          block: Education().eduBlock(),
        ),
      );
    } else if (navIndexDesktop == 3) {
      block = Align(
        alignment: Alignment.centerRight,
        child: SideBlock(
          // block: A,
          block: Experience().expBlock(),
        ),
      );
    } else if (navIndexDesktop == 4) {
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
