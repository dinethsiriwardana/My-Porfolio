import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:my_portfolio/backend/github.dart';
import 'package:my_portfolio/backend/lichess.dart';
import 'package:my_portfolio/backend/spotify.dart';
import 'package:my_portfolio/landing_page.dart';
import 'package:my_portfolio/test.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// void main() {
//   // runApp(const MyApp());
// }
void main() {
  runApp(const MyApp());
  // runApp(const Test());
  Lichess lichess = Lichess();
  Github github = Github();
  github.userdata();
  Spotify spotify = Spotify();
  // spotify.getDetails();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'dineth.me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      // home: Test(),
    );
  }
}

ChessBoardController controller = ChessBoardController();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return LandingPage();
    });
  }
}
