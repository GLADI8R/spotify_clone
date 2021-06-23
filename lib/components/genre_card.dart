// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/styles/constants.dart';

class GenreCard extends StatelessWidget {
  final Color _cardColor;
  final String _cardText;

  // const GenreCard({ Key? key }, this.cardColor, this.cardText) : super(key: key);
  const GenreCard(this._cardColor, this._cardText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: _cardColor!=Null?_cardColor:Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Text(
        _cardText,
        style: kCardTextStyle,
      ),
    );
  }
}
