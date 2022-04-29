import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/common/app_color.dart';

class HomeTextField extends StatefulWidget {
  const HomeTextField({Key? key}) : super(key: key);

  @override
  State<HomeTextField> createState() => _HomeTextFieldState();
}

class _HomeTextFieldState extends State<HomeTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 3 / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        textCapitalization: TextCapitalization.words,
        obscureText: false,
        style: const TextStyle(color: AppColor.textColor),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 4.0,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: AppColor.textColor,
            ),
            suffixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 2,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(right: 10),
                  padding:const EdgeInsets.only(top: 10,bottom: 10),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.mic,
                    color: AppColor.textColor,
                  ),
                ),
              ],
            ),
            hintText: "Search",
            hintStyle: const TextStyle(color: AppColor.textColor)),
      ),
    );
  }
}
