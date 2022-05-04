import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';

class DetailTitle extends StatelessWidget {
  String title;
  String subTitle;

  DetailTitle(this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.w700,
            color: AppColor.textColor,
          ),
          // textAlign: TextAlign.center,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 200, 195, 195),
          ),
          // textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
