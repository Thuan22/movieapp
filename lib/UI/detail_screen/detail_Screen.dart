import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/button_part.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/list_actors.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/tag_part.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/text_field.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/title_part.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';
import 'package:flutter_movie_finder/model/detail_movie.dart';
import 'package:flutter_movie_finder/network/api_dio.dart';

class DetailScreen extends StatefulWidget {
  int id;
  DetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String baseUrl = "https://image.tmdb.org/t/p/w500";
  MovieDetail? movieDetail;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDetail();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("$baseUrl${movieDetail?.posterPath}");
    return Scaffold(
      body: Stack(
        children: [
          movieDetail?.posterPath != null
              ? SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Image.network(
                    "$baseUrl${movieDetail?.posterPath}",
                    fit: BoxFit.fill,
                  ),
                )
              : SizedBox(
                  height: size.height,
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                    DetailTitle(movieDetail?.title ?? "1"),
                    DetailTag(
                      movieDetail?.genres ?? [],
                      movieDetail?.voteAverage ?? 0.0,
                    ),
                    DetailText(movieDetail?.overview ?? "2"),
                    DetailButton(),
                    SizedBox(
                      height: 10,
                    ),
                    DetailActorList([
                      "assets/images/thor.png",
                      "assets/images/thor.png",
                      "assets/images/thor.png",
                      "assets/images/thor.png",
                      "assets/images/thor.png",
                      "assets/images/thor.png",
                    ], "1", "2"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getDetail() {
    DioCustom.getDetail(widget.id).then((value) {
      if (value != null) {
        setState(() {
          movieDetail = value;
        });
      } else {
        return null;
      }
    });
  }
}
