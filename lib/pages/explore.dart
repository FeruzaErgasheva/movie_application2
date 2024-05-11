// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app2/components/movie_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey.shade500,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(color: Colors.grey.shade500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.settings,
                        color: Colors.deepPurple,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //movie cards
                Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/movie");
                          },
                          child: MovieCard(
                              image_url:
                                  "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg"),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        MovieCard(
                            image_url:
                                "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg")
                      ],
                    ),
                    Row(
                      children: [
                        MovieCard(
                            image_url:
                                "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg"),
                        SizedBox(
                          width: 25,
                        ),
                        MovieCard(
                            image_url:
                                "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg")
                      ],
                    ),
                    Row(
                      children: [
                        MovieCard(
                            image_url:
                                "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg"),
                        SizedBox(
                          width: 25,
                        ),
                        MovieCard(
                            image_url:
                                "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg")
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
