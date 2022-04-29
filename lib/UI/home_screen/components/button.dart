import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';

class HomeButton extends StatelessWidget {
  HomeButton({Key? key, required this.image, required this.text})
      : super(key: key);
  final image;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(166, 161, 224, 0.3),
            Color.fromRGBO(161, 243, 254, 0.3)
          ])),
      height: MediaQuery.of(context).size.height * 1 / 10,
      width: MediaQuery.of(context).size.width * 3 / 20,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(
            height: 3,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w400,
                color: AppColor.textColor),
          ),
        ],
      ),
    );
  }
}
