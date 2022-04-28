import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';

class DetailTag extends StatelessWidget {
  const DetailTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _genres = [
      'Action',
      '16+',
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 23,
              // width: MediaQuery.of(context).size.width *7/50,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(top: 19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: AppColor.backGroundColor,
              ),
              child: Text(
                _genres[0],
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.textColor,
                ),
              ),
            ),
            Container(
              height: 23,
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(left: 10, top: 19, right: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: AppColor.backGroundColor,
              ),
              child: Text(
                _genres[1],
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.textColor,
                ),
              ),
            ),
            Container(
              height: 23,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(top: 19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.imdbColor,
              ),
              child: RichText(
                text: const TextSpan(
                    text: "IMDb ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    children: [
                      TextSpan(
                        text: "8.5",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ]),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 19),
              child: Image.asset(
                AppImage.icShare,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10,),
            Container(
              margin: const EdgeInsets.only(top: 19),
              child: const Icon(Icons.favorite),
            ),
          ],
        )
      ],
    );
  }
}
