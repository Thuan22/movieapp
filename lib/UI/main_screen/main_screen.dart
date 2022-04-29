import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/home_screen/components/home_bottomnavigationBar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key,required this.screen}) : super(key: key);
final screen;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: screen),
        
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: const HomeBottomNavigationBar()
          ),
        
      ],
    );
  }
}
