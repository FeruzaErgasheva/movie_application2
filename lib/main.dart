import 'package:flutter/material.dart';
import 'package:movie_app2/pages/first.dart';
import 'package:movie_app2/pages/movie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        "/movie":(context) => MoviePage()
      },
    );
  }
}
