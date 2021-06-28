import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/playlist_songs_screen.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/screens/playlist_songs_screen.dart';
import 'package:spotify_clone/main.dart';

class HomePageSquareCard extends StatelessWidget {
  const HomePageSquareCard({
    Key? key,
    required this.imageAsset,
    required this.playlistText
  }) : super(key: key);

  final String imageAsset;
  final String playlistText;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery. of(context). size. width;

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/songslist');
      },
      child: Column(
        children: [
          Container(
            height: screenwidth*0.43,
            child: AspectRatio(
            aspectRatio: 1/1,
            child: Container(
              width: screenwidth*0.3,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),
              child: Image.asset(imageAsset),
            ),
        ),
          ),
          Text(playlistText,style: kCardTextStyle,)
      ]
      ),
    );
  }
}