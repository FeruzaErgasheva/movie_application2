import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  Function(int)? onTap;
  int index;

  BottomBar({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (value) => onTap!(value),
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey.shade600,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Explore",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined), label: "My list"),
        BottomNavigationBarItem(
            icon: Icon(Icons.download_outlined), label: "Download"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: "Profile"),
      ],
    );
  }
}
