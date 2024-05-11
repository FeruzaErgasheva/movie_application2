import 'package:flutter/material.dart';

class CommentsCard extends StatelessWidget {
  const CommentsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "24.5K Comments",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "See all",
              style: TextStyle(color: Colors.deepPurple),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBnoRRHaGNTfDoqSdmUyqxBl4zvWqOSvizIfnAMv4lXA&s",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Kristin Watson",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 180,
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          """James Cameron's Avatar" redirects here. For the media franchise that began with this film, see Avatar...""",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.favorite,
              color: Colors.orange,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "938",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "3 days ago",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}
