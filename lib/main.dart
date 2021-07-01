// @dart=2.9
import 'package:flutter/material.dart';
import 'package:spotify_clone/components/navbar.dart';
import 'package:spotify_clone/screens/player_screen.dart';
import 'package:spotify_clone/screens/playlist_songs_screen.dart';
import 'components/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationBar(),
      initialRoute: '/splashscreen',
      routes: {
        '/songslist': (context) => SongsList(),
        '/player': (context) => const MusicPlayer(),
        '/nav': (context) => const NavigationBar(),
        '/splashscreen': (context) => const SplashScreenSpotify()
      },
    );
  }
}
