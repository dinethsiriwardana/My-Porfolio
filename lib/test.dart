import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:my_portfolio/model/moviem.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

Future<List<dynamic>> getPopuler() async {
  const url = "https://api.themoviedb.org/3/movie/popular";
  final http.Response response = await http.get(Uri.parse(url), headers: {
    'accept': 'application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzYWRiNTRkYTdiNjk0NTk2MmY2NTliOGMwZGVmOWMzMCIsInN1YiI6IjY0YzhhYjY4Yjk3NDQyMDE0ZThjZmU2OCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.BbiwwWhRBBsfHWQ2sEZGGYyIP38xsz1oC46J-278_XU'
  });

  final data = jsonDecode(response.body);

  return data['results'];
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getPopuler(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List? movieList = snapshot.data;
            return ListView.builder(
              itemCount: movieList!.length,
              itemBuilder: (context, index) {
                final movieData = movieList[index];
                // print(movieData);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          movieData['title'],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${movieData['poster_path']}',
                      ),
                    ),
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
          }

          return Container();
        },
      ),
    );
  }
}
