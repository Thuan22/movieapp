// import 'dart:convert';
//
//
// import 'package:flutter_movie_finder/model/popular_movie.dart';
// import 'package:flutter_movie_finder/model/upcoming_movie.dart';
// import 'package:http/http.dart' as http;
//
// class ApiClient {
//   var baseUrl = "https://api.themoviedb.org/3/movie";
//   var client = http.Client();
//   Future<GetPopular?> getPopular() async {
//     try {
//       var response = await client.get(Uri.parse("$baseUrl/popular?api_key=e5f6c50b377e940a6a3bee54c9eb07c6&language=en-US&page=1"),);
//       Map<dynamic,dynamic> decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
//
//       GetPopular popularData = GetPopular.fromJson(decodedResponse as Map<String,dynamic>);
//       return popularData;
//     }
//     catch (e) {
//       print(e);
//       return null;
//     }
//   }
//   Future<GetUpcoming> getUpcoming() async {
//     try {
//       var response = await client.get(Uri.parse("$baseUrl/upcoming?api_key=e5f6c50b377e940a6a3bee54c9eb07c6&language=en-US&page=1"),);
//       Map<dynamic,dynamic> decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
//       GetUpcoming upcomingData = GetUpcoming.fromJson(decodedResponse as Map<String,dynamic>);
//       return upcomingData;
//     }
//     catch (e) {
//       print(e);
//       return GetUpcoming();
//     }
//   }
// }