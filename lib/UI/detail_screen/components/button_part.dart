import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_finder/common/app_color.dart';
import 'package:flutter_movie_finder/common/app_text.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          AppText.cast,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColor.textColor,
          ),
        ),
        Text(
          AppText.seeAll,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColor.textColor
          ),
        ),
      ],
    );
  }
}
