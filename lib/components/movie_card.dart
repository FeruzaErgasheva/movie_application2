import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  String image_url;
  MovieCard({super.key, required this.image_url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            image_url,
            width: 180,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "9.8",
                style: TextStyle(color: Colors.white),
              ),
            ))
      ]),
    );
  }
}
