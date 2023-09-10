import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/backend/spotify.dart';
import 'package:my_portfolio/controller/github_controller.dart';
import 'package:my_portfolio/controller/vscode_controller.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/front_end/home/elements/block/github_block.dart';
import 'package:my_portfolio/front_end/home/elements/block/spotify_block.dart';
import 'package:my_portfolio/front_end/home/elements/block/vscode.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as rs;

class Home {
  BlockElement blockElement = BlockElement();
  UIColors uiColors = UIColors();
  bool isMobi = rs.Device.screenType == rs.ScreenType.mobile ? true : false;
  GetVsCodeController getvsCodeController = Get.put(GetVsCodeController());
  Widget homeBlock() {
    return isMobi
        ? SizedBox(
            height: 48.h,
            child: columnBlock(),
          )
        : columnBlock();
  }

  // Column columnBlock() {
  Obx columnBlock() {
    return Obx(
      () => Column(
        children: [
          SizedBox(
            height: isMobi ? 20 : 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SpotifyBlock().spotifySmall(),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GithubBlock().githubSmall(),
          ),
          getvsCodeController.vsCodestts.value == 1
              ? Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: VsCodeBlock().vsCodeSmall(),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
