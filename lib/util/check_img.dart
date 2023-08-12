import 'package:flutter/material.dart';

class CheckImg extends StatelessWidget {
  const CheckImg({required this.language, required this.size});
  final String language;
  final double size;
  bool isImageAvailable(BuildContext context, String imagePath) {
    try {
      DefaultAssetBundle.of(context).load(imagePath);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;
    String img = "/image/progrmmingl/$language.png";
    try {
      isImageAvailable(context, img);
    } catch (e) {
      print(e);
    }
    if (isImageAvailable(context, img)) {
      imageWidget = Image.asset(img);
    } else {
      imageWidget = Image.asset(
          '/image/programmingl/code.png'); // Replace with your common image path
    }

    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
