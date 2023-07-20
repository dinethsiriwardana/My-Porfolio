// import 'dart:js_interop';

// class LichessModel {
//   final String username;
//   final int blitzRating;
//   final int bulletRating;
//   final int rapidRating;

//   LichessModel({
//     required this.username,
//     required this.blitzRating,
//     required this.bulletRating,
//     required this.rapidRating,
//   });

//   factory LichessModel.fromJson(Map<String, dynamic> json) {
//     return LichessModel(
//       username: json['username'],
//       blitzRating: json['perfs']['blitz']['rating'],
//       bulletRating: json['perfs']['bullet']['rating'],
//       rapidRating: json['perfs']['rapid']['rating'],
//     );
//   }
// }

// class NowPlayingGame {
//   final bool isNowPlaying;
//   final String fen;

//   NowPlayingGame({
//     required this.isNowPlaying,
//     required this.fen,
//   });

//   factory NowPlayingGame.fromJson(Map<String, dynamic> json) {
//     return NowPlayingGame(
//       isNowPlaying: json['nowPlaying'][0].isNull ? false : true,
//       fen: json['nowPlaying'][0]['fen'],
//     );
//   }
// }
