import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app2/components/comments.dart';
import 'package:movie_app2/components/movie_card.dart';
import 'package:movie_app2/components/prson.dart';
import 'package:movie_app2/components/trailer_card.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(
                "https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/12/avatar-2009-1.jpg",
                fit: BoxFit.cover,
                width: 700,
                height: 350,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Avatar: The way of\nWater",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.1),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.telegram,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //next line
                  Row(
                    children: [
                      Icon(
                        Icons.star_half,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "9.8",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        "2022",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "13+",
                          style:
                              TextStyle(color: Colors.deepPurple, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "United States",
                          style:
                              TextStyle(color: Colors.deepPurple, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Subtitle",
                          style:
                              TextStyle(color: Colors.deepPurple, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //next line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 53),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Play",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 52),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.deepPurple,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Download",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Avatar is a 2009 epic science fiction film directed, written, co-produced, and co-edited by James Cameron. It stars an ensemble cast including Sam Worthington, Zoe...",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PersonCard(),
                        PersonCard(),
                        PersonCard(),
                        PersonCard()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Trailers",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "More Like This",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Comments",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 2,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          color: Color.fromARGB(255, 82, 15, 197),
                          height: 2,
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ///comments
                  CommentsCard()

                  ///trailers
                  // Column(
                  //   children: [TrailerCard(), TrailerCard()],
                  // )

                  ///more like this
                  // Row(
                  //   children: [
                  //     MovieCard(
                  //         image_url:
                  //             "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg"),
                  //     SizedBox(
                  //       width: 25,
                  //     ),
                  //     MovieCard(
                  //         image_url:
                  //             "https://www.moviemeter.com/images/cover/1140000/1140198.300.jpg")
                  //   ],
                  // ),

                  //next line
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
