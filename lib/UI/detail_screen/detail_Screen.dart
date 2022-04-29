import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/button_part.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/list_actors.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/tag_part.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/text_field.dart';
import 'package:flutter_movie_finder/UI/detail_screen/components/title_part.dart';
import 'package:flutter_movie_finder/UI/home_screen/home_screen.dart';
import 'package:flutter_movie_finder/UI/home_screen/components/home_bottomnavigationBar.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final text =
      "When the Dark Elves attempt to plungge the universe into the darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane asd 1231 131 asd a sd ";
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
                color: Colors.white,
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
                  DetailTitle(),
                  DetailTag(),
                  DetailText(text: text),
                  DetailButton(),
                  SizedBox(height: 10,),
                  DetailActorList(),
                  
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
