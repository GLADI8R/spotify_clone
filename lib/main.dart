import 'package:flutter/material.dart';
import 'package:spotify_clone/components/navbar.dart';
import 'package:spotify_clone/screens/player_screen.dart';
import 'package:spotify_clone/screens/playlist_songs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationBar(),
      routes: {
        '/songslist': (context) => SongsList(),
        '/player': (context) => const MusicPlayer(),
      },
    );
  }
}
