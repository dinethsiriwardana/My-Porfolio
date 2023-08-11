import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:my_portfolio/controller/spotify_controller.dart';

class Spotify {
  GetSpotifyController getSpotifyController = Get.put(GetSpotifyController());
  final String _clientId = "bf94d731016149fb8c43e58f254b685c";
  final String _clientSecret = "6fdb61e6b9d842dca1f9d78140e725bb";
  final String _refresh_token =
      "AQAN-CkRDgSzr5QvZpxmuVzWvuRTJ2-yztfrrVY7YDwXFP1_FvlKBeEjik93LG4IyxV7Rdlo_nF2x2TRVLjBjIE7uoxyZ2b6nJw5AoXauwQRHQZssD2dBF_1DsmpNOA53fc";
  String _token =
      "BQAueCRFxwf0b_4LcI8B7lbZMS1VMwI98i6hbUaQ3Q16p4RZr_f9GIBUIBwA_vApBTHRBweQboAtTvSPZDdGPv_lEAMH89Gb9RhiMsDzp2DdjX5tLZsHFy0aUkmBRSjrsy_-US4L73X0a7rAmW5EsAQY3eEjtJTYriymtX3Wpp8eCDXm8xt_cYtQlvG3KpWOb7AkN3n-rl5KLsnJYe4j2xIDX1qLVKUSpBYr4Ct7jEUQVgmfS2YbGpnTYWUVCr7TGJsoRryO5YEd-j5lNEv7-jafuj4dEaiDv6PBfS44JoHZrNpnCwqV_5X-LPXdxg";

  Spotify() {
    getStart();
  }
  Future<void> getStart() async {
    _token = await getAuth();
    await getLastSavedSong();
    await getSong();
    Timer.periodic(Duration(seconds: 5), (result) async {
      await getSong();
    });
  }

  Future<String> getAuth() async {
    final response = await http.post(
      Uri.parse('https://accounts.spotify.com/api/token'),
      headers: {
        // 'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization':
            'Basic ${base64Encode(utf8.encode('$_clientId:$_clientSecret'))}',
      },
      body: {
        'grant_type': 'refresh_token',
        'refresh_token': _refresh_token,
      },
    );
    // print("getAuth  ${response.statusCode}");

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final newToken = responseBody['access_token'];

      return newToken;
    }
    return "";
  }

  Future<void> getSong() async {
    final responses = await http.get(
      Uri.parse('https://api.spotify.com/v1/me/player/currently-playing'),
      headers: {'Authorization': 'Bearer ${_token}'},
    );
    // print("getSong  ${responses.statusCode}");
    if (responses.statusCode == 200) {
      final data = jsonDecode(responses.body);

      if (data['is_playing']) {
        getSpotifyController.changeSpotifyOnPlay(data['is_playing']);
        getSpotifyController.changeSpotifySongName(data['item']['name']);
        getSpotifyController
            .changeSpotifySongArtist(data['item']['artists'][0]['name']);
        getSpotifyController.spotifySongImage.value =
            data['item']['album']['images'][0]['url'];
      } else {
        getSpotifyController.changeSpotifyOnPlay(data['is_playing']);

        getLastSavedSong();
      }
    } else if (responses.statusCode == 204) {
      getLastSavedSong();
    } else if (responses.statusCode == 401) {
      _token = await getAuth();
      await getSong();
    }
  }

  Future<void> getLastSavedSong() async {
    final responses = await http.get(
      Uri.parse('https://api.spotify.com/v1/me/tracks?limit=1'),
      headers: {'Authorization': 'Bearer ${_token}'},
    );

    if (responses.statusCode == 200) {
      final data = jsonDecode(responses.body);
      getSpotifyController
          .changeSpotifySongName(data['items'][0]['track']['name']);
      getSpotifyController.changeSpotifySongArtist(
          data['items'][0]['track']['artists'][0]['name']);
      getSpotifyController.changeSpotifySongImage(
          data['items'][0]['track']['album']['images'][0]['url']);
    } else if (responses.statusCode == 401) {
      _token = await getAuth();
      await getSong();
    }
  }

  Future<void> getDetails() async {
    final responses = await http.get(
      Uri.parse('https://api.spotify.com/v1/me'),
      headers: {'Authorization': 'Bearer ${_token}'},
    );
    // print("getDetails  ${responses.statusCode}");
    if (responses.statusCode == 200) {
      final data = jsonDecode(responses.body);
    } else if (responses.statusCode == 401) {
      _token = await getAuth();
      await getDetails();
    }
  }
}
