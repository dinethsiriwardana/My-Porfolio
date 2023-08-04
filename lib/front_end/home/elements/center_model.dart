import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/time_controller.dart';
import 'package:my_portfolio/front_end/home/elements/time_circle.dart';
import 'package:my_portfolio/util/colors.dart';

class CenterModel extends StatelessWidget {
  const CenterModel({super.key});

  @override
  Widget build(BuildContext context) {
    final GetTimeController getTimeController = Get.put(GetTimeController());
    final UIColors uiColors = UIColors();
    const wsize = 300.0;
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
            size: wsize + 150,
          ),
        ),
        Obx(
          () => TimeCircle(
            foregroundColor: uiColors.green,
            value: getTimeController.progressValueMin.value,
            size: wsize + 100,
          ),
        ),
        Obx(
          () => TimeCircle(
            foregroundColor: uiColors.red,
            value: getTimeController.progressValueHour.value,
            size: wsize + 50,
          ),
        ),
      ],
    );
  }
}
