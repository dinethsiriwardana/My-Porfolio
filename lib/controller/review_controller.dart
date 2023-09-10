import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetReviewController extends GetxController {
  var isReview = false.obs;
  var isReviewed = false.obs;

  Future<void> changeIsReviewed(bool val) async {
    isReviewed.value = val;
  }

  void changeIsReview() {
    isReview.value = !isReview.value;
  }
}
