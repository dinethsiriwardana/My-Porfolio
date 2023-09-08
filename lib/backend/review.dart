import 'package:firebase_database/firebase_database.dart';
import 'package:my_portfolio/controller/review_controller.dart';
import 'package:intl/intl.dart';

import 'dart:js' as js;

import 'package:shared_preferences/shared_preferences.dart';

class Addreview {
  GetReviewController getReviewController = GetReviewController();

  Future<void> addreview(String review) async {
    try {
      DateTime now = DateTime.now();
      String formattedDate = DateFormat('yyyy:MM:dd - hh:mm:ss:a').format(now);

      //date and time now
      String date = now.year.toString() +
          now.month.toString() +
          now.day.toString() +
          now.hour.toString() +
          now.minute.toString() +
          now.second.toString();

      DatabaseReference ref = FirebaseDatabase.instance.ref("review/$date");
      String userAgent = js.context['navigator']['userAgent'] as String;

      await ref.set(
          {"review": review, "userAgent": userAgent, "time": formattedDate});

      final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
      final SharedPreferences prefs = await _prefs;
      await prefs.setBool('reviewed', true);
    } catch (e) {
      print("getData" + e.toString());
    }
  }
}
