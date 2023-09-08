import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:my_portfolio/backend/github.dart';
import 'package:my_portfolio/backend/lichess.dart';
import 'package:my_portfolio/backend/review.dart';
import 'package:my_portfolio/backend/spotify.dart';
import 'package:my_portfolio/backend/vscode.dart';
import 'package:my_portfolio/firebase_options.dart';
import 'package:my_portfolio/front_end/home/elements/block/review_block.dart';
import 'package:my_portfolio/landing_page.dart';
import 'package:my_portfolio/test.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
  try {
    Github github = Github(); // github.userdata();
    Spotify spotify = Spotify();
    VsCode vsCode = VsCode();
  } catch (e) {
    print(e);
    log(e.toString());
  }
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
