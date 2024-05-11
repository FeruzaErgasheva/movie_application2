import 'package:flutter/material.dart';
import 'package:movie_app2/components/bottombar.dart';
import 'package:movie_app2/pages/explore.dart';
import 'package:movie_app2/pages/screens.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;
  List _pages = [
    HomePage(),
    ExplorePage(),
    MyListPage(),
    DownloadPage(),
    ProfilePage()
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      bottomNavigationBar: BottomBar(
        index: _selectedIndex,
        onTap: (p0) => onTap(p0),
      ),
    );
  }
}
