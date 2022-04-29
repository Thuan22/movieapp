import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// class DetailTextField extends StatelessWidget {
//   const DetailTextField({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 3 / 4,
//       child: Text(
//         "When the Dark Elves attempt to plungge the universe into the darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane 123joi1231 b123h1 ",
//         maxLines: 3,
//         style: TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }

class DetailText extends StatefulWidget {
  DetailText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  State<DetailText> createState() => _DetailTextState();
}

class _DetailTextState extends State<DetailText> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ReadMoreText(
        widget.text,
        trimLines: 3,
        colorClickableText: Colors.blue,
        trimMode: TrimMode.Line,
        trimCollapsedText: "Less",
        trimExpandedText: "More",
      ),
    );
  }
}
