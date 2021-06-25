import 'package:flutter/material.dart';

class HomePageSquareCard extends StatelessWidget {
  const HomePageSquareCard({
    Key? key,
    required this.screenwidth,
  }) : super(key: key);

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
        width: screenwidth*0.3,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white
        ),
      ),
    );
  }
}