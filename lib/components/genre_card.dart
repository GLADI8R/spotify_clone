// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/styles/constants.dart';

class GenreCard extends StatelessWidget {
  final Color cardColor;
  final String cardText;

  const GenreCard(this.cardColor, this.cardText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Text(
        cardText,
        style: kCardTextStyle,
      ),
    );
  }
}
