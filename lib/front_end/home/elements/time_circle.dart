import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/time_controller.dart';

class TimeCircle extends StatelessWidget {
  TimeCircle(
      {super.key,
      required this.foregroundColor,
      required this.value,
      required this.size});

  final Color foregroundColor;
  final double value;
  final double size;

  @override
  Widget build(BuildContext context) {
    // final GetTimeController getTimeController = Get.put(GetTimeController());

    return SizedBox(
      width: size,
      child: CircleProgressBar(
        animationDuration: Duration(milliseconds: 150),
        foregroundColor: foregroundColor,
        backgroundColor: foregroundColor.withOpacity(0.03),
        value: value,
        strokeWidth: 15,
      ),
    );
  }
}
