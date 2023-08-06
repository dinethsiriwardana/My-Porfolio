import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:js' as js;

class BlockElement {
  UIColors uiColors = UIColors();
  bool isMobi = Device.screenType == ScreenType.mobile ? true : false;

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
    bool isMobi = Device.screenType == ScreenType.mobile ? true : false;

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
    bool isMobi = Device.screenType == ScreenType.mobile ? true : false;

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

  Text subText(String text, double size) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.prompt(
        textStyle: TextStyle(
          color: uiColors.darkblue,
          fontWeight: FontWeight.normal,
          fontSize: size.w,
        ),
      ),
    );
  }

  Text hedText(String text, double size) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.prompt(
        textStyle: TextStyle(
          color: uiColors.darkblue,
          fontWeight: FontWeight.bold,
          fontSize: size.w,
        ),
      ),
    );
  }

  Text mainText(String text, double size) {
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
          color: uiColors.lightblue.withOpacity(opacity),
          fontWeight: FontWeight.bold,
          fontSize: size.w,
        ),
      ),
    );
  }
}
