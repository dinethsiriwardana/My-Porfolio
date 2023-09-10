import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Lichess {
  Future<void> run() async {
    Timer.periodic(Duration(seconds: 2), (timer) async {
      await fetchCurrentGames('joshuadeguzman');
      await userdata();
    });
  }

  Future<void> fetchCurrentGames(String username) async {
    final url = 'https://lichess.org/api/account/playing';
    final response = await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer ' // Replace with your actual API token
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final nowPlaying = data['nowPlaying'];
      if (nowPlaying.isNotEmpty) {
        // NowPlayingGame.fromJson(data);
        final game = nowPlaying[0];
        final fen = game['fen'];
        print(game);
      } else {
        print('No ongoing games found for $username.');
      }
    } else {
      print('Failed to fetch current games. Error: ${response.statusCode}');
    }
  }

  Future<void> userdata() async {
    const url = 'https://lichess.org/api/account';
    final response = await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Authorization':
          'Bearer lip_kvgOLsjaVgZBTnBSdtRk' // Replace with your actual API token
    });
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final id = data['id'];
      if (id.isNotEmpty) {
        if (kDebugMode) {
          print(data);
        }
      } else {
        print('No Details');
      }
    } else {
      print('Failed to fetch current games. Error: ${response.statusCode}');
    }
  }
}
