import 'package:flutter/material.dart';

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
  bool isMore = false;
  final String text;
  @override
  State<DetailText> createState() => _DetailTextState();
}

class _DetailTextState extends State<DetailText> {
  late bool isMore;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isMore = widget.isMore;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: isMore
              ? BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 5 / 6)
              : BoxConstraints(
                  maxHeight: 100,
                  maxWidth: MediaQuery.of(context).size.width * 5 / 6),
          // child: Text(
          //   widget.text,
          //   softWrap: true,
          //   maxLines: isMore ? 10: 3,
          //   overflow: TextOverflow.ellipsis,
          // ),
          child: InkWell(
            onTap: () {
              setState(() {
                isMore = !isMore;
              });
            },
            child: Text.rich(
              TextSpan(
                children: [
                  // WidgetSpan(
                  //   alignment: PlaceholderAlignment.middle,
                  //   child: Text(
                  //     widget.text,
                  //     softWrap: true,
                  //     maxLines: isMore ? 10 : 3,
                  //     overflow: TextOverflow.ellipsis,
                  //   ),
                  // ),
                  TextSpan(text: widget.text),
                  TextSpan(text: "More", style: TextStyle(color: Colors.blue)),
                
                ],
              ),
              maxLines: isMore ? 10 : 3,
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}
