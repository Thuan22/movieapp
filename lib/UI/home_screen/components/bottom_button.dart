import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({ Key? key,required this.image }) : super(key: key);
final image;
  @override
  Widget build(BuildContext context) {
    return 
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,

      children: [
        Image.asset(image),
        Container(
          height: 1,
          width: 1,
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),

      ],
    );
  }
    
  
}