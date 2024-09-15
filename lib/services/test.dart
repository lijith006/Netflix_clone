// import 'dart:convert';

// import 'package:netflix_clone01/common/constant.dart';
// import 'package:netflix_clone01/models/movie.dart';
// import 'package:http/http.dart' as http;

// const apiKey = "b92df2013346e6741c5e20e0e6bb9cf5";

// class Api {
//   static const trendingUrl =
//       'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';

//   static const baseUrl = 'https://api.themoviedb.org/3';
//   var key = "?api_key=$apiKey";
//   late String endpoint;

//   Future<List<Movie>> trendingMovies() async {
//     final response = await http.get(Uri.parse(trendingUrl));
//     if (response.statusCode == 200) {
//       final decodeData = jsonDecode(response.body)['results'] as List;
//       print(decodeData);
//       return decodeData.map((movie) => Movie.fromJson(movie)).toList();
//     } else {
//       throw Exception('Something happend');
//     }
//   }
// }
