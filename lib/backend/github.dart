import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:my_portfolio/controller/github_controller.dart';
import 'package:my_portfolio/util/encrypt.dart';

class Github {
  GetGithubController getGithubController = Get.put(GetGithubController());

  String authKey = "";
  Github() {
    try {
      getEnv();
    } catch (e) {
      print(e);
    }

    userdata();
  }

  getEnv() async {
    authKey = dotenv.env['GITHUB_API']!;
    // print(auth);
  }

  // String auth = "your_auth_key_here"; // Replace with your actual auth key
  Future<void> userdata() async {
    const url = 'https://api.github.com/users/dinethsiriwardana';
    final response = await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $authKey' // Replace with your actual API token
    });
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // print(data);
      getGithubController.changeGithubData(data);
      userStars();
    } else {
      getGithubController.changeGithubData(
          {"stts": "${response.statusCode}", "message": "${response.body}"});
    }
  }

  Future<void> userStars() async {
    // String authKey = authKey0 + authKey1 + authKey2 + authKey3;

    const url = 'https://api.github.com/users/dinethsiriwardana/repos';
    final response = await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $authKey' // Replace with your actual API token
    });
    if (response.statusCode == 200) {
      final jsonList = json.decode(response.body) as List<dynamic>;

      jsonList.sort((a, b) {
        final aUpdatedAt = DateTime.parse(a['updated_at']);
        final bUpdatedAt = DateTime.parse(b['updated_at']);
        return bUpdatedAt.compareTo(aUpdatedAt);
      });
      DateTime inputDateTime = DateTime.parse(jsonList[0]['updated_at']);
      DateTime currentDateTime = DateTime.now();
      Duration difference = currentDateTime.difference(inputDateTime);

      formatTimeAgo(difference);

      int totalStargazersCount = 0;

      for (final item in jsonList) {
        totalStargazersCount += item['stargazers_count'] as int;
      }
      getGithubController.changeGithubStars(totalStargazersCount);
    } else {
      getGithubController.changeGithubData({"stts": "error"});
    }
  }

  void formatTimeAgo(Duration difference) {
    int githubLUpdate = 0;
    String githubLAgoText = "";
    if (difference.inSeconds < 60) {
      githubLUpdate = difference.inSeconds;
      githubLAgoText = 'seconds ago';
    } else if (difference.inMinutes < 60) {
      githubLUpdate = difference.inMinutes;
      githubLAgoText = 'minutes ago';
    } else if (difference.inHours < 24) {
      githubLUpdate = difference.inHours;
      githubLAgoText = 'hours ago';
    } else if (difference.inDays < 7) {
      githubLUpdate = difference.inDays;
      githubLAgoText = 'days ago';
    } else {
      githubLUpdate = difference.inDays ~/ 7;
      githubLAgoText = 'weeks ago';
    }
    getGithubController.changeGithubLUpdate(githubLUpdate);
    getGithubController.changeGithubLAgoText(githubLAgoText);
  }
}
