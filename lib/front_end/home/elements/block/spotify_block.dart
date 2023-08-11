import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/github_controller.dart';
import 'package:my_portfolio/controller/spotify_controller.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as rs;

class SpotifyBlock {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
  bool isMobi = rs.Device.screenType == rs.ScreenType.mobile ? true : false;
  GetSpotifyController getSpotifyController = Get.put(GetSpotifyController());

  Obx spotifySmall() {
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
                      image: NetworkImage(
                          getSpotifyController.spotifySongImage.value),
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
                      blockElement.subText(
                          (getSpotifyController.spotifyOnPlay.value
                              ? "Now Playing"
                              : "Latest Saved"),
                          isMobi ? 3.5 : 0.8),
                      blockElement.hedText(
                          getSpotifyController.spotifySongName.value,
                          isMobi ? 4.5 : 1.2),
                      blockElement.subText(
                          getSpotifyController.spotifySongArtist.value,
                          isMobi ? 3.5 : 1),
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
                image: DecorationImage(
                  image: AssetImage("/image/spotify.png"),
                  fit: BoxFit.cover,
                ),
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
        blockElement.hedText(text, 0.75),
        blockElement.hedText(count.toString(), 1.1),
      ],
    );
  }
}
