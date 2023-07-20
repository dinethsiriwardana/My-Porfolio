import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetTimeController extends GetxController {
  var progressValueSec = 0.0.obs;
  var progressValueMin = 0.0.obs;
  var progressValueHour = 0.0.obs;

  void startTimerSec() {
    DateTime now = DateTime.now();
    int currentSeconds = now.second;
    this.progressValueSec.value = currentSeconds / 60;
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      this.progressValueSec.value = this.progressValueSec.value + 0.001;
    });
  }

  void startTimerMin() {
    DateTime now = DateTime.now();
    int currentMin = now.minute;
    this.progressValueMin.value = currentMin / 60;
    Timer.periodic(Duration(seconds: 1), (timer) {
      this.progressValueMin.value = this.progressValueMin.value + 0.001;
    });
  }

  void startTimerhour() {
    DateTime now = DateTime.now();
    int currentHour = now.hour;
    this.progressValueHour.value = currentHour / 24;
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      this.progressValueHour.value = this.progressValueHour.value + 0.001;
    });
  }
}
