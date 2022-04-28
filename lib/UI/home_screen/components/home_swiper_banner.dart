import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 4 / 20,
      child: Swiper(
        loop: true,
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (c, i) {
          return Image.asset(
            "assets/images/deadpool.png",
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
