import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/controller/nav_controller.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:js' as js;
import 'package:responsive_sizer/responsive_sizer.dart' as ResponsiveSizer;

class BlockElement {
  UIColors uiColors = UIColors();
  final GetNavController getNavController = Get.put(GetNavController());
  bool isMobi =
      Device.screenType == ResponsiveSizer.ScreenType.mobile ? true : false;

  Padding singleDetailsBlock(
      String date, String location, String type, String details) {
    return Padding(
      padding: isMobi
          ? EdgeInsets.fromLTRB(15.0, 5, 15, 5)
          : EdgeInsets.fromLTRB(30.0, 10, 30, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              subText(date, isMobi ? 3.5 : 1),
              subText(location, isMobi ? 3.5 : 1),
            ],
          ),
          hedText(type, isMobi ? 5.2 : 1.5),
          hedText(details, isMobi ? 3.5 : 0.91),
        ],
      ),
    );
  }

  InkWell contactBar(String img, String link) {
    return InkWell(
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: () {
          js.context.callMethod('open', [link]);
        });
  }

  Container programmingLicon(String image) {
    double size = isMobi ? 10.w : 3.2.w;
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("/image/programmingl/$image.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container programmingLicons(String image) {
    bool isMobi =
        Device.screenType == ResponsiveSizer.ScreenType.mobile ? true : false;

    double size = isMobi ? 6.5.w : 2.1.w;
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("/image/programmingl/$image.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AutoSizeText subText(String text, double size) {
    // print(text + '${size.w}');
    return AutoSizeText(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.prompt(
        textStyle: TextStyle(
          color: uiColors.darkblue,
          fontWeight: FontWeight.normal,
          fontSize: size.w,
        ),
      ),
      maxFontSize: 20,
      minFontSize: 1,
      maxLines: 6,
      overflow: TextOverflow.ellipsis,
    );
  }

  AutoSizeText hedText(String text, double size) {
    // print(text + '${size.w}');
    return
        // Text(
        //   text,
        //   textAlign: TextAlign.left,
        //   style: GoogleFonts.prompt(
        //     textStyle: TextStyle(
        //       color: uiColors.darkblue,
        //       fontWeight: FontWeight.bold,
        //       fontSize: size.w,
        //     ),
        //   ),
        // );
        AutoSizeText(
      text,
      style: GoogleFonts.prompt(
        textStyle: TextStyle(
          color: uiColors.darkblue,
          fontWeight: FontWeight.bold,
          fontSize: size.w,
        ),
      ),
      maxFontSize: 30,
      minFontSize: 1,
      // maxLines: 4,
      // overflow: TextOverflow.ellipsis,
    );
  }

  Text mainText(String text, double size) {
    // print(text + '${size.w}');

    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
          color: uiColors.darkblue,
          fontWeight: FontWeight.bold,
          fontSize: size.w,
        ),
      ),
    );
  }

  Text navText(String text, double size, bool isSelect) {
    double opacity = isSelect ? 1 : 0.5;

    return Text(
      text,
      style: GoogleFonts.prompt(
        textStyle: TextStyle(
          color: uiColors.red.withOpacity(opacity),
          fontWeight: FontWeight.bold,
          fontSize: size.w,
        ),
      ),
    );
  }

  InkWell desktopNav(String text, int index) {
    return InkWell(
      child:
          navText(text, 1.4, getNavController.navIndexDesktop.value == index),
      onTap: () {
        getNavController.changeNavOp(0.0);
        getNavController.changeNavIndex(index);
      },
    );
  }

  GlassContainer homefiles(Widget block) {
    double width = 0, height = 0;

    if (isMobi) {
      width = 90.w;
      height = 10.h;
    } else {
      width = 25.w;
      height = 5.5.w;
    }
    return GlassContainer(
        width: width,
        height: height,
        blur: 20,
        border: Border.all(
          color: uiColors.lightblue.withOpacity(0.3),
          width: 1,
        ),
        shadowStrength: 5,
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(20),
        shadowColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.blue.withOpacity(0.3),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: block,
        ));
  }
}
