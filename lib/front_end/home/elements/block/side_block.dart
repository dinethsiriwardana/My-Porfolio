import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:my_portfolio/util/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SideBlock extends StatelessWidget {
  const SideBlock({
    super.key,
    required this.block,
  });
  final Widget block;
  @override
  Widget build(BuildContext context) {
    UIColors uiColors = UIColors();
    double width = 0, height = 0;
    if (Device.screenType == ScreenType.mobile) {
      width = 90.w;
      height = 53.h;
    } else {
      width = 27.w;
      height = 70.h;
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
        borderRadius: BorderRadius.circular(25),
        shadowColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.blue.withOpacity(0.3),
          ],
        ),
        child: block);
  }
}
