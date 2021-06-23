import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

GridView genreCard = GridView.count(
  crossAxisSpacing: 15.0,
  mainAxisSpacing: 10.0,
  childAspectRatio: (1 / 0.55), //set the height of card
  shrinkWrap: true,
  crossAxisCount: 2,
  children: [
    Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: const Text(
        'Pop',
        style: kCardTextStyle,
      ),
    ),
    Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: const Text(
        'Hip Hop',
        style: kCardTextStyle,
      ),
    ),
  ],
);
