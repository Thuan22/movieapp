import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_image.dart';
import 'package:flutter_movie_finder/model/detail_movie.dart';

class DetailTag extends StatefulWidget {
  List<Genres> _genres = [];
  double _imdb;

  DetailTag(this._genres, this._imdb);

  @override
  State<DetailTag> createState() => _DetailTagState();
}

class _DetailTagState extends State<DetailTag> {
  bool _isLike = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 30,
          width: 160,
          // width: MediaQuery.of(context).size.width * 1 / 2,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 23,
                // width: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: AppColor.buttonColor,
                ),
                child: Text(
                  widget._genres[index].name ?? "a",
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColor.textColor,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
            itemCount: widget._genres.length,
          ),
        ),
        Container(
          height: 23,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.imdbColor,
          ),
          child: RichText(
            text: TextSpan(
                text: "IMDb ",
                style: TextStyle(fontSize: 12, color: Colors.black),
                children: [
                  TextSpan(
                    text: widget._imdb.toString(),
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ]),
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Image.asset(
                AppImage.icShare,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _isLike = !_isLike;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: _isLike ? Colors.white : Colors.red,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
