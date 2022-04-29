import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/home_screen/components/bottom_button.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 10 / 100,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppColor.backGroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          BottomButton(image: BottomNavigationItem.icHome),
          BottomButton(image: BottomNavigationItem.icFavorite),
          BottomButton(image: BottomNavigationItem.icTicket),
          BottomButton(image: BottomNavigationItem.icAccount),
          BottomButton(image: BottomNavigationItem.icShuffle),
        ],
      ),
    );
  }
}
