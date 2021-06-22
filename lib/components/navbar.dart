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
      bottomNavigationBar: BottomNavigationBar(
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
          // BottomNavigationBarItem(
          //   icon: Icon(Premium icon)
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: kLightGrey,
        backgroundColor: kDarkGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}
