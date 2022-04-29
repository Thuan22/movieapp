import 'package:flutter/material.dart';
import 'package:flutter_movie_finder/UI/main_screen/main_screen.dart';
import 'package:flutter_movie_finder/network/api_client.dart';
import 'UI/home_screen/home_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   late final ApiClient _apiClient;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
class abc extends StatefulWidget {
  const abc({Key? key}) : super(key: key);

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainScreen(screen: HomeScreen()),
      ),
    );
  }
}
