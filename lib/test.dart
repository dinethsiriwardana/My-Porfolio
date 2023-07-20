import 'dart:async';

import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'controller/time_controller.dart';

class CircleTimer extends StatefulWidget {
  @override
  _CircleTimerState createState() => _CircleTimerState();
}

class _CircleTimerState extends State<CircleTimer> {
  double progressValue = 0.0; // Initial progress value
  int totalMilliseconds = 60000; // Total milliseconds for the timer
  final GetTimeController getTimeController = Get.put(GetTimeController());
  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is created
    // startTimer();
    getTimeController.startTimerMin();
  }

  // void startTimer() {
  //   Timer.periodic(Duration(milliseconds: 10), (timer) {
  //     // Update the progress value every 100 milliseconds
  //     setState(() {
  //       DateTime now = DateTime.now();
  //       int currentSeconds = now.second;
  //       int currentMiliSeconds = now.microsecond;

  //       progressValue = currentSeconds / 60;
  //       double roundedNumber = double.parse(progressValue.toStringAsFixed(3)) +
  //           (currentMiliSeconds / 100000); // Rounded to 3 decimal places

  //       print(roundedNumber);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Timer'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Obx(
            () => CircleProgressBar(
              // animationDuration: Duration(seconds: 1),
              foregroundColor: Colors.blue,
              backgroundColor: Colors.white.withOpacity(0),
              value: getTimeController.progressValueSec.value,
            ),
          ),
        ),
      ),
    );
  }
}
