import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/home_page_d.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

import 'front_end/home/home_page_m.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    late final String screenTypeText;

    switch (Device.screenType) {
      case ScreenType.mobile:
        return HomePageM();
        break;
      case ScreenType.desktop:
      case ScreenType.tablet:
        return HomePageD();
        break;
      // ScreenType can only be desktop when `maxTabletWidth`
      // is set in `ResponsiveSizer`
    }
    ;
  }
}
