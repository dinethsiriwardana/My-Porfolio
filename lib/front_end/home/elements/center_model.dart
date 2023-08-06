import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/time_controller.dart';
import 'package:my_portfolio/front_end/home/elements/time_circle.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:responsive_sizer/responsive_sizer.dart'
    as ResponsiveSizer; // Use 'as' to provide a prefix for responsive_sizer

class CenterModel extends StatefulWidget {
  const CenterModel({super.key});

  @override
  State<CenterModel> createState() => _CenterModelState();
}

class _CenterModelState extends State<CenterModel> {
  @override
  Widget build(BuildContext context) {
    final GetTimeController getTimeController = Get.put(GetTimeController());
    final UIColors uiColors = UIColors();
    double wsize = 0;
    double space = 0;
    if (ResponsiveSizer.Device.screenType ==
        ResponsiveSizer.ScreenType.mobile) {
      wsize = 150;
      space = 30;
    } else {
      wsize = 300;
      space = 50;
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          //Circle Clip
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("/image/my.png"),
              fit: BoxFit.cover,
            ),
          ),

          height: wsize,
          width: wsize,
        ),
        Obx(
          () => TimeCircle(
            foregroundColor: uiColors.lightblue,
            value: getTimeController.progressValueSec.value,
            size: wsize + (space * 3),
          ),
        ),
        Obx(
          () => TimeCircle(
            foregroundColor: uiColors.green,
            value: getTimeController.progressValueMin.value,
            size: wsize + (space * 2),
          ),
        ),
        Obx(
          () => TimeCircle(
            foregroundColor: uiColors.red,
            value: getTimeController.progressValueHour.value,
            size: wsize + (space * 1),
          ),
        ),
      ],
    );
  }
}
