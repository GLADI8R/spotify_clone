import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

class HomePageCard1 extends StatelessWidget {
  HomePageCard1({required this.cardtext, required this.imageAsset});

  final String cardtext;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/songslist');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        margin: const EdgeInsets.only(left: 8, right: 5, top: 10, bottom: 5),
        height: screenwidth * 0.13,
        width: screenwidth * 0.5,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            color: Colors.grey.withOpacity(0.5)),
        child: Row(
          children: [
            Image.asset(imageAsset),
            const SizedBox(
              width: 5,
            ),
            Container(
              child: Text(
                cardtext,
                style: kCardStyle,
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
