import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/controller/nav_controller.dart';
import 'package:my_portfolio/front_end/home/elements/about_me.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/front_end/home/elements/block/contact.dart';
import 'package:my_portfolio/front_end/home/elements/center_model.dart';
import 'package:my_portfolio/front_end/home/elements/education.dart';
import 'package:my_portfolio/front_end/home/elements/block/side_block.dart';
import 'package:my_portfolio/front_end/home/elements/experience.dart';
import 'package:my_portfolio/front_end/home/elements/project.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/time_controller.dart';
import 'elements/time_circle.dart';
import 'dart:js' as js;

class HomePageD extends StatefulWidget {
  const HomePageD({super.key});

  @override
  State<HomePageD> createState() => _HomePageDState();
}

class _HomePageDState extends State<HomePageD> {
  final GetTimeController getTimeController = Get.put(GetTimeController());
  final GetNavController getNavController = Get.put(GetNavController());
  final UIColors uiColors = UIColors();

  void initState() {
    super.initState();
    getTimeController.startTimerSec();
    getTimeController.startTimerMin();
    getTimeController.startTimerhour();
  }

  BlockElement blockElement = BlockElement();
  @override
  Widget build(BuildContext context) {
    Column block = const Column();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("/image/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const CenterModel(),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blockElement.mainText("Hello", 1.8),
                  blockElement.mainText("I'm Dineth Siriwardhana", 2.2),
                  const SizedBox(
                    height: 15,
                  ),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("ABOUT ME", 1.2,
                          getNavController.navIndexDesktop.value == 1),
                      onTap: () {
                        getNavController.changeNavOp(0.0);
                        getNavController.changeNavIndex(1);
                      },
                    );
                  }),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("EDUCATION", 1.2,
                          getNavController.navIndexDesktop.value == 2),
                      onTap: () {
                        getNavController.changeNavOp(0.0);
                        getNavController.changeNavIndex(2);
                      },
                    );
                  }),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("EXPERIENCE", 1.2,
                          getNavController.navIndexDesktop.value == 3),
                      onTap: () {
                        getNavController.changeNavOp(0.0);
                        getNavController.changeNavIndex(3);
                      },
                    );
                  }),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("PROJECTS", 1.2,
                          getNavController.navIndexDesktop.value == 4),
                      onTap: () {
                        getNavController.changeNavOp(0.0);
                        getNavController.changeNavIndex(4);
                      },
                    );
                  }),
                ],
              ),
            ),
            Obx(() {
              return getNavController.currentBlock.value;
            }),
            Align(alignment: Alignment.bottomRight, child: Contact().contact()),
          ],
        ) /* add child content here */,
      ),
    );
  }
}
