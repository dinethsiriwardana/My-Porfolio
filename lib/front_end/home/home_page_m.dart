import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/nav_controller.dart';
import 'package:my_portfolio/controller/time_controller.dart';
import 'package:my_portfolio/front_end/home/elements/about_me.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/front_end/home/elements/block/contact.dart';
import 'package:my_portfolio/front_end/home/elements/block/side_block.dart';
import 'package:my_portfolio/front_end/home/elements/center_model.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePageM extends StatefulWidget {
  const HomePageM({super.key});

  @override
  State<HomePageM> createState() => _HomePageMState();
}

class _HomePageMState extends State<HomePageM> {
  final GetTimeController getTimeController = Get.put(GetTimeController());
  final GetNavController getNavController = Get.put(GetNavController());
  final UIColors uiColors = UIColors();
  void initState() {
    super.initState();
    getTimeController.startTimerSec();
    getTimeController.startTimerMin();
    getTimeController.startTimerhour();
    getNavController.changeNavUIMobi();
  }

  BlockElement blockElement = BlockElement();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomLeft,
          image: AssetImage("/image/bgm.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blockElement.mainText("Hello I'm", 5),
                blockElement.mainText("Dineth Siriwardhana", 7),
              ],
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CenterModel(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => navContainer(0),
              ),
              Obx(
                () => navContainer(1),
              ),
              Obx(
                () => navContainer(2),
              ),
              Obx(
                () => navContainer(3),
              ),
              Obx(
                () => navContainer(4),
              ),
            ],
          ),
          SwipeDetector(
            onSwipe: (direction, offset) {
              print(direction);
            },
            onSwipeLeft: (offset) {
              getNavController
                  .changeNavIndexMobi(getNavController.navIndexmobi.value + 1);
              print(getNavController.navIndexmobi.value);
            },
            onSwipeRight: (offset) {
              getNavController
                  .changeNavIndexMobi(getNavController.navIndexmobi.value - 1);
              print(getNavController.navIndexmobi.value);
            },
            child: Obx(() {
              return getNavController.currentBlocMobi.value;
            }),
          ),
          Contact().contact()
        ],
      ),
    ));
  }

  AnimatedContainer navContainer(int num) {
    bool isselect = getNavController.navIndexmobi.value == num ? true : false;
    return AnimatedContainer(
      // Add border radios
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // radius of 10
        color: isselect ? Colors.white : Colors.white.withOpacity(0.5),
      ),
      margin: const EdgeInsets.all(5),
      height: 5,
      width: isselect ? 30 : 20,
    );
  }
}
