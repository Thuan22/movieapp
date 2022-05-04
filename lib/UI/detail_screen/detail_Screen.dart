import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/button_part.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/list_actors.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/tag_part.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/text_field.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/title_part.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';
import 'package:flutter_movie_finder/model/popular_movie.dart';
import 'package:flutter_movie_finder/model/upcoming_movie.dart';
import 'package:flutter_movie_finder/network/api_dio.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  GetUpcoming upcoming = GetUpcoming();
  GetPopular popular = GetPopular();
  int? idUpcoming;
  int? idPopular;
  String baseUrl = "https://api.themoviedb.org/3/movie/";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height * 3 / 3,
            width: size.width,
            child: Image.asset(
              "assets/images/thor.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: size.height * 1 / 20,
            left: size.height * 1 / 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                AppImage.icBackButton,
                color: AppColor.textColor,
              ),
            ),
          ),
          Positioned(
            top: size.height * 1 / 2,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * 1 / 2,
              decoration: const BoxDecoration(
                gradient: AppColor.backGroundColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DetailTitle("1", "@"),
                  DetailTag(["Drama", "2"]),
                  DetailText("text: text"),
                  DetailButton(),
                  SizedBox(
                    height: 10,
                  ),
                  DetailActorList([
                    "assets/images/thor.png",
                    "assets/images/thor.png",
                  ], "1", "2"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getIDUpcoming() {
    DioCustom.getUpcoming().then((value) {
      if (value != null) {
        setState(() {
          upcoming = value;
          idUpcoming = upcoming.results?[0].id ?? 00;
        });
      } else {
        return null;
      }
    });
  }

  void getIDPopular() {
    DioCustom.getPopular().then((value) {
      if (value != null) {
        setState(
          () {
            popular = value;
            idPopular = popular.results?[0].id ?? 00;
          },
        );
      } else {
        return null;
      }
    });
  }
}
