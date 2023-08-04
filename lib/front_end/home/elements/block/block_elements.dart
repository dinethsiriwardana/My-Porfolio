import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BlockElement {
  UIColors uiColors = UIColors();

  Padding singleDetailsBlock(
      String date, String location, String type, String details) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              subText(date, 1),
              subText(location, 1),
            ],
          ),
          hedText(type, 1.5),
          hedText(details, 0.91),
        ],
      ),
    );
  }

  Container programmingLicon(String image) {
    double size = 3.2.w;
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
    double size = 2.2.w;
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
