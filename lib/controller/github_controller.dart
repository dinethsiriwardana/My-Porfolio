import 'package:get/get.dart';

class GetGithubController extends GetxController {
  var githubData = {}.obs;
  var githubUsername = ''.obs;
  var githubPublicRepos = 0.obs;
  var githubFollowers = 0.obs;
  var githubStars = 0.obs;
  var githubLUpdate = 0.obs;
  var githubLAgoText = "".obs;

  //changeGithubLUpdate
  void changeGithubLUpdate(int time) {
    githubLUpdate.value = time;
  }

  //changeGithubLAgoText
  void changeGithubLAgoText(String text) {
    githubLAgoText.value = text;
  }

  void changeGithubUsername(String username) {
    githubUsername.value = username;
  }

  void changeGithubData(Map data) {
    // print('data: $data');
    githubUsername.value = data['login'];
    githubPublicRepos.value =
        data['public_repos'] + data['total_private_repos'];
    githubFollowers.value = data['followers'];
  }

  void changeGithubStars(int stars) {
    githubStars.value = stars;
  }
}
