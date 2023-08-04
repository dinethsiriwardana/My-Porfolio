import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetTimeController extends GetxController {
  var progressValueSec = 0.0.obs;
  var progressValueMin = 0.0.obs;
  var progressValueHour = 0.0.obs;

  void startTimerSec() {
    try {
      DateTime now = DateTime.now();
      double currentSeconds = now.second as double;
      progressValueSec.value = currentSeconds / 60.0;
      Timer.periodic(const Duration(milliseconds: 50), (timer) {
        currentSeconds = currentSeconds + 0.05;
        progressValueSec.value = currentSeconds / 60.0;

        if (progressValueSec.value >= 1.0) {
          progressValueSec.value = 0.0;
          now = DateTime.now();
          currentSeconds = now.second as double;
        }
        // print(progressValueSec.value);
      });
    } catch (e) {
      print(e);
    }
  }

  //milliseconds: 50 = 0.05
  //milliseconds: 500 = 0.5
  //seconds: 1 = 1

  void startTimerMin() {
    try {
      DateTime now = DateTime.now();
      double currentMin = now.minute as double;
      progressValueMin.value = currentMin / 60;
      Timer.periodic(Duration(seconds: 1), (timer) {
        currentMin = currentMin + 0.01666667;
        progressValueMin.value = currentMin / 60.0;

        if (progressValueMin.value >= 1.0) {
          progressValueMin.value = 0.0;
          now = DateTime.now();
          currentMin = now.minute as double;
        }
      });
    } catch (e) {
      print(e);
    }
  }

  void startTimerhour() {
    try {
      DateTime now = DateTime.now();
      double currentHour = now.hour as double;
      double currentMin = now.minute as double;

      print(currentHour + (currentMin / 100));
      progressValueHour.value = (currentHour + (currentMin / 100)) / 12;

      Timer.periodic(Duration(minutes: 1), (timer) {
        // currentHour = currentHour + 0.04;
        // progressValueHour.value = progressValueHour.value + 0.001;
        DateTime now = DateTime.now();
        double currentHour = now.hour as double;
        double currentMin = now.minute as double;

        progressValueHour.value = (currentHour + (currentMin / 100)) / 12;
        print(
            "${currentHour + (currentMin / 100)} = ${progressValueHour.value}");
        if (progressValueHour.value >= 1.0) {
          progressValueHour.value = 0.0;
        }
        // print(progressValueHour.value);
      });
    } catch (e) {
      print(e);
    }
  }
}
