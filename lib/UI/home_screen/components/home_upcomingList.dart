import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/detail_screen/detail_Screen.dart';
import 'package:flutter_movie_finder/UI/main_screen/main_screen.dart';
import 'package:flutter_movie_finder/model/upcoming_movie.dart';

class UpcomingList extends StatelessWidget {
  List<Results> list;
  String baseUrl = "https://image.tmdb.org/t/p/original";
  UpcomingList(this.list);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 12 / 50,
      child: Swiper(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 20),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            width: MediaQuery.of(context).size.width * 1 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
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
                  "${baseUrl + list[index].posterPath.toString()}",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
        viewportFraction: 0.4,
        // scale: 0.9,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: 50),
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
