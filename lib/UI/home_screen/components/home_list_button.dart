import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/home_screen/components/button.dart';


import '../../../common/app_image.dart';


class HomeListButton extends StatelessWidget {
  HomeListButton({Key? key}) : super(key: key);

  final buttonModel = ["Genres", "TV Series", "Movies", "In Theatres"];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeButton(image: ButtonImage.icList, text: buttonModel[0]),
        HomeButton(image: ButtonImage.icTV, text: buttonModel[1]),
        HomeButton(image: ButtonImage.icMovie, text: buttonModel[2]),
        HomeButton(image: ButtonImage.icCinema, text: buttonModel[3]),
      ],
    );
  }
}
