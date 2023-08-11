import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  AutoSizeText(
                    'Last Update',
                    style: GoogleFonts.prompt(
                      textStyle: TextStyle(
                        color: uiColors.darkblue,
                        fontWeight: FontWeight.bold,
                        fontSize: isMobi ? 1.8.w : 8,
                      ),
                    ),
                    maxFontSize: 10,
                    minFontSize: 1,
                    // maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AutoSizeText(
                    getGithubController.githubLUpdate.value.toString(),
                    style: GoogleFonts.prompt(
                      textStyle: TextStyle(
                        color: uiColors.darkblue,
                        fontWeight: FontWeight.bold,
                        fontSize: isMobi ? 20 : 20,
                      ),
                    ),
                    maxFontSize: 20,
                    minFontSize: 15,
                    // maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AutoSizeText(
                    getGithubController.githubLAgoText.value,
                    style: GoogleFonts.prompt(
                      textStyle: TextStyle(
                        color: uiColors.darkblue,
                        fontWeight: FontWeight.bold,
                        fontSize: isMobi ? 1.7.w : 10,
                      ),
                    ),
                    maxFontSize: 10,
                    minFontSize: 1,
                    // maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  )
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
        blockElement.hedText(text, isMobi ? 3.5 : 0.65),
        blockElement.hedText(count.toString(), isMobi ? 3.5 : 1),
      ],
    );
  }
}
