import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';
import 'package:flutter_movie_finder/common/app_text.dart';

import 'components/home_appBar.dart';
import 'components/home_bottomnavigationBar.dart';
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
            const HomeAppBar(),
            const SizedBox(
              height: 20,
            ),
            const HomeTextField(),
            const SizedBox(
              height: 26,
            ),
            SingleChildScrollView(
            
              child: Column(
                children: [
                  const HomeBanner(),
                  const SizedBox(
                    height: 20,
                  ),
                  HomeListButton(),
                  const SizedBox(
                    height: 35,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 140.0),
                    child:  Text(
                      AppText.upcoming,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: AppColor.textColor),
                    ),
                  ),
                  SizedBox(height: 15,),
                  UpcomingList(),
                  SizedBox(height: 20,),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  HomeBottomNavigationBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
