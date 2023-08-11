import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/github_controller.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as rs;

class GithubBlock {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
  bool isMobi = rs.Device.screenType == rs.ScreenType.mobile ? true : false;
  GetGithubController getGithubController = Get.put(GetGithubController());

  Obx githubSmall() {
    double size = isMobi ? 7.5.h : 7.5.h;
    return Obx(
      () => BlockElement().homefiles(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: size,
                  height: size,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("/image/github.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      blockElement.hedText(
                          getGithubController.githubUsername.value,
                          isMobi ? 4 : 1.2),
                      SizedBox(
                        width: isMobi ? 40.w : 11.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            gitModel("Repos",
                                getGithubController.githubPublicRepos.value),
                            gitModel(
                                "Stars", getGithubController.githubStars.value),
                            gitModel("Followers",
                                getGithubController.githubFollowers.value),
                          ],
                        ),
                      ),
                    ],
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
                color: uiColors.green,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  blockElement.hedText("Last Update", isMobi ? 2 : 0.5),
                  blockElement.hedText(
                      getGithubController.githubLUpdate.value.toString(),
                      isMobi ? 5 : 1.4),
                  blockElement.hedText(getGithubController.githubLAgoText.value,
                      isMobi ? 1.8 : 0.45),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column gitModel(String text, int count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        blockElement.hedText(text, isMobi ? 3.5 : 0.75),
        blockElement.hedText(count.toString(), isMobi ? 3.5 : 1.1),
      ],
    );
  }
}
