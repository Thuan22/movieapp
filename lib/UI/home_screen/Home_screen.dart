import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_text.dart';
import 'package:flutter_movie_finder/model/popular_movie.dart';
import 'package:flutter_movie_finder/model/upcoming_movie.dart';
import 'package:flutter_movie_finder/network/api_dio.dart';

import 'components/home_appBar.dart';
import 'components/home_list_button.dart';
import 'components/home_search_field.dart';
import 'components/home_swiper_banner.dart';
import 'components/home_upcomingList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetPopular popular = GetPopular();
  String? baseUrl = "https://image.tmdb.org/t/p/original";
  GetUpcoming upcoming = GetUpcoming();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMovie();
    getUpcomingData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        decoration: const BoxDecoration(
          gradient: AppColor.backGroundColor,
        ),
        child: Column(
          children: [
            HomeAppBar(),
            const SizedBox(
              height: 20,
            ),
            HomeTextField(),
            const SizedBox(
              height: 26,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  HomeBanner(
                    popular.results ?? [],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  HomeListButton(),
                  const SizedBox(
                    height: 35,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 140.0),
                    child: Text(
                      AppText.upcoming,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: AppColor.textColor),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  UpcomingList(
                    upcoming.results ?? [],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getMovie() {
    DioCustom.getPopular().then((value) {
      if (value != null) {
        setState(() {
          popular = value;
          print(popular.toJson().toString());
        });
      }
    });
  }

  void getUpcomingData() {
    DioCustom.getUpcoming().then((value) {
      if (value != null) {
        setState(() {
          upcoming = value;
        });
      }
    });
  }
}
