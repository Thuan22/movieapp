import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';

class DetailActorList extends StatelessWidget {
  List<String> _actorList = [];
  String name;
  String subName;

  DetailActorList(this._actorList, this.name, this.subName);

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
                  _actorList[index],
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 8,
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                subName,
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
