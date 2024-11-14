import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/backend/review.dart';
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
import 'package:preload_page_view/preload_page_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as ResponsiveSizer;
import 'package:stroke_text/stroke_text.dart';

import '../../controller/review_controller.dart';
import '../../controller/time_controller.dart';
import 'elements/block/review_block.dart';
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
  final GetReviewController getReviewController =
      Get.put(GetReviewController());

  final UIColors uiColors = UIColors();
  BlockElement blockElement = BlockElement();
  bool isMobi =
      ResponsiveSizer.Device.screenType == ResponsiveSizer.ScreenType.mobile
          ? true
          : false;

  void initState() {
    super.initState();
    getNavController.changeNavUI();
    getTimeController.startTimerSec();
    getTimeController.startTimerMin();
    getTimeController.startTimerhour();
    FlutterNativeSplash.remove();
    // Addreview addreview = Addreview();
  }

  void showreview() async {
    try {
      final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
      final SharedPreferences prefs = await _prefs;
      // await prefs.remove('reviewed');

      if (prefs.getBool('reviewed') != null && prefs.getBool('reviewed')!) {
        print(prefs.getBool('reviewed'));
        getReviewController.changeIsReviewed(true);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    showreview();
    Column block = const Column();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: uiColors.bg,
          image: const DecorationImage(
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
                  StrokeText(
                    text: "A DEVELOPER | β MLSA | Postman Student Leader",
                    textStyle: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                        color: uiColors.green.withOpacity(0),
                        fontWeight: FontWeight.bold,
                        fontSize: 1.5.w,
                      ),
                    ),
                    strokeColor: uiColors.darkblue,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Obx(() {
              return getNavController.currentBlock.value;
            }),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Obx(() {
                        return SizedBox(child: Review().reviewGlass());
                      }),
                      SizedBox(
                        height: 10,
                      ),
                      Contact().contact(),
                    ],
                  ),
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Obx(() {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      blockElement.desktopNav("HOME", 0),
                      blockElement.desktopNav("ABOUT ME", 1),
                      blockElement.desktopNav("EDUCATION", 2),
                      blockElement.desktopNav("EXPERIENCE", 3),
                      blockElement.desktopNav("PROJECTS", 4),
                    ],
                  ),
                );
              }),
            ),
          ],
        ) /* add child content here */,
      ),
    );
  }
}
