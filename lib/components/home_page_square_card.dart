// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

class HomePageSquareCard extends StatelessWidget {
  const HomePageSquareCard(
      {Key? key, required this.imageAsset, required this.playlistText})
      : super(key: key);

  final String imageAsset;
  final String playlistText;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/songslist');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenwidth * 0.43,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                width: screenwidth * 0.3,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(imageAsset),
                ),
              ),
            ),
          ),
          Padding(
            child: Text(
              playlistText,
              style: kCardTextStyle,
              textAlign: TextAlign.left,
            ),
            padding: const EdgeInsets.only(left: 10),
          ),
        ],
      ),
    );
  }
}
