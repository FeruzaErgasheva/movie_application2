import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrailerCard extends StatelessWidget {
  const TrailerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://variety.com/wp-content/uploads/2021/04/Avatar.jpg?w=800",
                width: 140,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 50,
                left: 60,
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                ))
          ]),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trailer 3 Final",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1m 45s",
                style: TextStyle(
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 104, 58, 183),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
