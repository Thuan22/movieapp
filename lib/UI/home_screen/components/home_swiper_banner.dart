import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/detail_screen/detail_Screen.dart';
import 'package:flutter_movie_finder/UI/main_screen/main_screen.dart';
import 'package:flutter_movie_finder/model/popular_movie.dart';

class HomeBanner extends StatelessWidget {
  List<Results> list;
  String baseUrl = "https://image.tmdb.org/t/p/original";
  HomeBanner(this.list);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 6 / 25,
      child: Swiper(
        loop: true,
        itemCount: list.length,
        viewportFraction: 0.75,
        scale: 0.85,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(
                        screen: DetailScreen(
                          id: list[index].id ?? 335787,
                        ),
                      ),
                    ),
                  );
                },
                child: Image.network(
                  '${baseUrl + list[index].posterPath.toString()}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
        pagination: const SwiperPagination(
          margin: EdgeInsets.only(top: 20),
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
