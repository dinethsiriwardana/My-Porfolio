import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:my_portfolio/backend/review.dart';
import 'package:my_portfolio/controller/review_controller.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as ResponsiveSizer;

class Review {
  BlockElement blockElement = BlockElement();
  TextEditingController _controller = TextEditingController();

  final GetReviewController getReviewController =
      Get.put(GetReviewController());
  final UIColors uiColors = UIColors();

  AnimatedContainer reviewGlass() {
    // getReviewController.changeIsReview();
    bool isMobi =
        ResponsiveSizer.Device.screenType == ResponsiveSizer.ScreenType.mobile
            ? true
            : false;
    return AnimatedContainer(
        width: getReviewController.isReview == true
            ? (isMobi ? 90.w : 30.w)
            : (isMobi ? 30.w : 10.w), //De
        height: 5.h,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          border: Border.all(
            color: uiColors.lightblue.withOpacity(0.3),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: GlassContainer(
            width: getReviewController.isReview == true
                ? (isMobi ? 90.w : 30.w)
                : (isMobi ? 30.w : 10.w),
            height: 5.h,
            blur: 20,
            shadowStrength: 5,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(10),
            shadowColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.blue.withOpacity(0.3),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: getReviewController.isReview != true
                      ? blockElement.mainText(
                          (getReviewController.isReviewed == true
                              ? "Thank you :-)"
                              : "Write Review :-)"),
                          isMobi ? 3 : 1)
                      : Row(
                          children: [
                            SizedBox(
                              height: 3.h,
                              width: isMobi ? 78.w : 25.w,
                              child: TextField(
                                controller: _controller,
                                cursorColor: uiColors.darkblue,
                                style: TextStyle(color: uiColors.darkblue),
                                decoration: InputDecoration(
                                  hintText:
                                      'Is it cool? say it.. and your name if you want :-)',
                                  hintStyle:
                                      TextStyle(color: uiColors.darkblue),
                                  // border: InputBorder.none,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .blue), // Change the color as needed
                                  ),
                                ),
                                autofocus: true,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.send, color: uiColors.darkblue),
                              onPressed: () {
                                if (_controller.text != null) {
                                  try {
                                    Addreview().addreview(_controller.text);
                                    getReviewController.changeIsReviewed(true);
                                    getReviewController.changeIsReview();
                                  } catch (e) {}
                                }
                              },
                            ),
                          ],
                        ),
                  onTap: () {
                    print("changeIsReview");
                    if (getReviewController.isReviewed != true) {
                      getReviewController.changeIsReview();
                    }
                  },
                )
              ],
            )));
  }
}
