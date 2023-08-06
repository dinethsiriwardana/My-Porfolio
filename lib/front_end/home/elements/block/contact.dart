import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:my_portfolio/front_end/home/elements/block/block_elements.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Contact {
  final UIColors uiColors = UIColors();
  BlockElement blockElement = BlockElement();

  GlassContainer contact() {
    bool isMobi = Device.screenType == ScreenType.mobile ? true : false;

    return GlassContainer(
        width: isMobi ? 50.w : 13.w,
        height: 5.h,
        blur: 20,
        border: Border.all(
          color: uiColors.lightblue.withOpacity(0.3),
          width: 1,
        ),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            blockElement.contactBar("/image/wa.png", 'https://wa.link/vm0zbm'),
            blockElement.contactBar("/image/li.png",
                'https://www.linkedin.com/in/dinethsiriwardana/'),
            blockElement.contactBar(
                "/image/fb.png", 'https://facebook.com/dinethSi'),
            blockElement.contactBar("/image/in.png",
                'https://www.instagram.com/dineth_siriwardana/'),
            //Add image
          ],
        ));
  }
}
