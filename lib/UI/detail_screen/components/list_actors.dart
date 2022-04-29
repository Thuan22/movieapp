import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';


class DetailActorList extends StatelessWidget {
  const DetailActorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemBuilder: ((context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 20,
                width: MediaQuery.of(context).size.width * 1 / 10,
                child: Image.asset(
                  "assets/images/thor.png",
                  fit: BoxFit.fill,
                ),
              ),
             const Text(
                "data",
                style: TextStyle(
                    fontSize: 8,
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500),
              ),
             const  Text(
                "data",
                style: TextStyle(
                    fontSize: 8,
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          );
        }),
      ),
    );
  }
}
