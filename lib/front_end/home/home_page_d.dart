import 'dart:ui';

import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/controller/nav_controller.dart';
import 'package:my_portfolio/front_end/home/elements/about_me.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/front_end/home/elements/center_model.dart';
import 'package:my_portfolio/front_end/home/elements/education.dart';
import 'package:my_portfolio/front_end/home/elements/block/side_block.dart';
import 'package:my_portfolio/front_end/home/elements/experience.dart';
import 'package:my_portfolio/front_end/home/elements/project.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/time_controller.dart';
import 'elements/time_circle.dart';

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
    // getTimeController.startTimerSec();
    // getTimeController.startTimerMin();
    // getTimeController.startTimerhour();
  }

  BlockElement blockElement = BlockElement();
  @override
  Widget build(BuildContext context) {
    Column block = Column();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
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
            CenterModel(),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blockElement.mainText("Hello", 1.8),
                  blockElement.mainText("I'm Dineth Siriwardhana", 2.2),
                  SizedBox(
                    height: 15,
                  ),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("ABOUT ME", 1.2,
                          getNavController.navIndex.value == 1),
                      onTap: () {
                        getNavController.changeNavOp(0.0);
                        getNavController.changeNavIndex(1);
                      },
                    );
                  }),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("EDUCATION", 1.2,
                          getNavController.navIndex.value == 2),
                      onTap: () {
                        getNavController.changeNavOp(0.0);
                        getNavController.changeNavIndex(2);
                      },
                    );
                  }),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("EXPERIENCE", 1.2,
                          getNavController.navIndex.value == 3),
                      onTap: () {
                        getNavController.changeNavOp(0.0);
                        getNavController.changeNavIndex(3);
                      },
                    );
                  }),
                  Obx(() {
                    return InkWell(
                      child: blockElement.navText("PROJECTS", 1.2,
                          getNavController.navIndex.value == 4),
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
            Align(
              alignment: Alignment.bottomRight,
              child: GlassContainer(
                  width: 13.w,
                  height: 5.h,
                  blur: 20,
                  border: Border.all(
                    color: uiColors.lightblue.withOpacity(0.3),
                    width: 1,
                  ),
                  shadowStrength: 5,
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor:
                      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.blue.withOpacity(0.3),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Add image
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("/image/wa.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("/image/fb.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("/image/in.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("/image/li.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ) /* add child content here */,
      ),
    );
  }
}
