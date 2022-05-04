import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';

class DetailTitle extends StatelessWidget {
  String title;
  DetailTitle(this.title);

  @override
  Widget build(BuildContext context) {
    List<String> wordList = title.split(" ");

    return Column(children: [
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: wordList[0],
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.w700,
              color: AppColor.textColor,
            ),
            children: [
              TextSpan(
                text: "\n${title}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 200, 195, 195),
                ),
              )
            ]),
      )
    ]);

    // textAlign: TextAlign.center,

    // Text(
    //   subTitle,

    // textAlign: TextAlign.center,
  }
}
