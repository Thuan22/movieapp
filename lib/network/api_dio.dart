import 'package:dio/dio.dart';
import 'package:flutter_movie_finder/model/popular_movie.dart';
import 'package:flutter_movie_finder/model/upcoming_movie.dart';

String baseUrl = "https://api.themoviedb.org/3/movie";

class DioCustom {
  static Future<GetPopular?> getPopular() async {
    Dio dio = Dio();
    try {
      final response = await dio.get(
          "$baseUrl/popular?api_key=e5f6c50b377e940a6a3bee54c9eb07c6&language=en-US&page=1");
      if (response.data != null) {
        print(response.data.toString());
        GetPopular popular = GetPopular.fromJson(response.data);
        return popular;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<GetUpcoming?> getUpcoming() async {
    Dio dio = Dio();
    try {
      final response = await dio.get(
          "$baseUrl/upcoming?api_key=e5f6c50b377e940a6a3bee54c9eb07c6&language=en-US&page=1");
      if (response.data != null) {
        GetUpcoming upcoming = GetUpcoming.fromJson(response.data);
        return upcoming;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
