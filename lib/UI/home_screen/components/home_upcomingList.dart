import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_movie_finder/UI/detail_screen/detail_Screen.dart';
import 'package:flutter_movie_finder/UI/main_screen/main_screen.dart';

class UpcomingList extends StatefulWidget {
  const UpcomingList({ Key? key }) : super(key: key);

  @override
  State<UpcomingList> createState() => _UpcomingListState();
}

class _UpcomingListState extends State<UpcomingList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*11/50,
   
      child: Swiper(
    
        itemCount: 3,
        itemBuilder: (c,i) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width *1/3 ,
          
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen(screen: DetailScreen()) ));
              },
              child: Image.asset("assets/images/poster.jpg",fit: BoxFit.fill,)));
        },
        viewportFraction: 0.4,
        // scale: 0.9,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: 25),
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