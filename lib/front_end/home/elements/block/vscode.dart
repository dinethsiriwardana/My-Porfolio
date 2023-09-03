import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/github_controller.dart';
import 'package:my_portfolio/controller/spotify_controller.dart';
import 'package:my_portfolio/controller/vscode_controller.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/check_img.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as rs;

class VsCodeBlock {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
  bool isMobi = rs.Device.screenType == rs.ScreenType.mobile ? true : false;
  GetVsCodeController getvsCodeController = Get.put(GetVsCodeController());

  Obx vsCodeSmall() {
    double size = isMobi ? 7.5.h : 7.5.h;

    return Obx(
      () => BlockElement().homefiles(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: size + 10,
                  height: size + 10,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:
                          // Image.asset("/image/programmingl/code.png",
                          //     errorBuilder: (BuildContext context, Object exception,
                          //         StackTrace stackTrace) {
                          //   return Image.network('path');
                          // }).image,
                          AssetImage(getvsCodeController.vaCodeimg.value),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: size,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Stack(
                      // mainAxisSize: MainAxisSize.max,

                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: blockElement.subText(
                              ((isMobi ? "L/U: " : "Last Update: ") +
                                  getvsCodeController.vsCodetime.value),
                              isMobi ? 3.5 : 0.8),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: blockElement.hedText(
                              getvsCodeController.vsCodelanguage.value == ""
                                  ? "Shhhhhhh"
                                  : getvsCodeController.vsCodelanguage.value
                                      .toUpperCase(),
                              isMobi ? 4.5 : 1.2),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: blockElement.subText(
                              "Project: " +
                                  (getvsCodeController.vsCodeproject.value ==
                                          'Unknown'
                                      ? "It's a secret"
                                      : getvsCodeController
                                          .vsCodeproject.value),
                              isMobi ? 3 : 0.9),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: size,
              height: size,
              margin: const EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                //border r
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("/image/programmingl/vscode.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
