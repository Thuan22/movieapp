import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/model/popular_movie.dart';

class HomeBanner extends StatelessWidget {
  List<Results> list;
  String baseUrl = "https://image.tmdb.org/t/p/original";
  HomeBanner(this.list);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 4 / 20,
      child: Swiper(
        loop: true,
        itemCount: list.length,
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (context, index) {
          return Image.network(
            '${baseUrl + list[index].posterPath.toString()}',
            fit: BoxFit.fill,
          );
        },
        pagination: const SwiperPagination(
          margin: EdgeInsets.only(top: 57),
          builder: DotSwiperPaginationBuilder(
            size: 6,
            activeSize: 6,
            color: Colors.grey,
            activeColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
