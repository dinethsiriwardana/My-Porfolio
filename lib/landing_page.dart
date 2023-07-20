import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/front_end/home/home_page_d.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        return Scaffold(
          appBar: AppBar(
            title: Text('Mobile'),
          ),
          body: Center(
            child: Text('Mobile'),
          ),
        );
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
