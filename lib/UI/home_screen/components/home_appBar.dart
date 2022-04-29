import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';
import 'package:flutter_movie_finder/common/app_text.dart';

class HomeAppBar extends StatelessWidget {
  HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text.rich(
          TextSpan(
            text: AppText.greeting,
            style: TextStyle(fontSize: 18, color: AppColor.textColor),
            children: <InlineSpan>[
              TextSpan(
                text: " Jane!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Image.asset(
          AppImage.icNotification,
        ),
      ],
    );
  }
}
