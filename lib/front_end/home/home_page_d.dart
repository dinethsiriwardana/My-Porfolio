import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePageD extends StatefulWidget {
  const HomePageD({super.key});

  @override
  State<HomePageD> createState() => _HomePageDState();
}

class _HomePageDState extends State<HomePageD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("/image/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
        ) /* add child content here */,
      ),
    );
  }
}
