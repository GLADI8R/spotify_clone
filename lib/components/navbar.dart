// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/screens/home_page.dart';
import 'package:spotify_clone/screens/search_page.dart';
import 'package:spotify_clone/screens/library_page.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    LibraryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      backgroundColor: kDarkGrey,
      persistentFooterButtons: [
        Container(
          height: 45.0,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/player');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/TooFarGone.jpeg',
                  height: 50.0,
                ),
                const SizedBox(width: 10.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Too Far Gone',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                    const Text(
                      'cloverscars',
                      style: TextStyle(color: kLightGrey, fontSize: 10.0),
                    ),
                    // const Divider(color: Colors.black),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30.0,
                ),
              ],
            ),
          ),
        )
      ],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          border: Border(top: BorderSide(color: Colors.black, width: 1.0)),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Library',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: kLightGrey,
          backgroundColor: kDarkGrey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
