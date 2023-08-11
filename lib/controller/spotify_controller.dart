import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as rs;

bool isMobi = rs.Device.screenType == rs.ScreenType.mobile ? true : false;

class GetSpotifyController extends GetxController {
  var spotifyData = {}.obs;
  var spotifyUsername = ''.obs;
  var spotifyOnPlay = false.obs;
  var spotifySongName = "".obs;
  var spotifySongArtist = "".obs;
  var spotifySongImage =
      "https://img.icons8.com/?size=512&id=G9XXzb9XaEKX&format=png".obs;

  //changeSpotifyData
  void changeSpotifyData(Map data) {
    spotifyData.value = data;
  }

  void changeSpotifyUsername(String username) {
    spotifyUsername.value = username;
  }

  void changeSpotifyOnPlay(bool onPlay) {
    spotifyOnPlay.value = onPlay;
  }

  void changeSpotifySongName(String name) {
    spotifySongName.value = truncateString(name);
  }

  void changeSpotifySongArtist(String artist) {
    spotifySongArtist.value = artist;
  }

  void changeSpotifySongImage(String image) {
    spotifySongImage.value = image;
  }

  String truncateString(String input) {
    if (input == null || input.isEmpty) {
      return '';
    }

    // int maxLength = isMobi ? 15 : 20;
    int maxLength = 20;
    if (input.length <= maxLength) {
      return input;
    }
    input = input.replaceAll(RegExp(r'[,-]'), '');

    String truncated = input.substring(0, maxLength);

    // Check if the truncated string has complete words
    if (truncated.contains(' ')) {
      List<String> words = truncated.split(' ');
      words.removeLast(); // Remove the last word (likely to be incomplete)
      truncated = words.join(' ');
    } else {
      truncated =
          truncated.substring(0, 17); // If no words, use first 17 characters
    }

    return '$truncated';
  }
}
