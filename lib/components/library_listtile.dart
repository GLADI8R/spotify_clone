// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/main.dart';
import 'package:spotify_clone/screens/playlist_songs_screen.dart';

class LibraryListTile extends StatelessWidget {
  const LibraryListTile(
      {Key? key,
      required this.listTitle,
      required this.listAuthor,
      required this.listImage})
      : super(key: key);

  final String listTitle;
  final String listAuthor;
  final String listImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/songslist');
      },
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset(
              listImage,
              height: 70.0,
              width: 70.0,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 19.0),
                  child: Text(
                    listTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Text(
                  listAuthor,
                  style: const TextStyle(
                    color: kLightGrey,
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
