// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/styles/constants.dart';

class GenreCard extends StatelessWidget {
  final Color cardColor;
  final String cardText;
  final double rightMar, leftMar;

  // const GenreCard({ Key? key }, this.cardColor, this.cardText) : super(key: key);
  const GenreCard(this.cardColor, this.cardText, this.rightMar, this.leftMar);

  // final String finalColor = cardColor.toString();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.0,
      margin: EdgeInsets.only(bottom: 15.0, right: rightMar, left: leftMar),
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
