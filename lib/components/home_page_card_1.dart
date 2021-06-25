import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/screens/home_page.dart';

class HomePageCard1 extends StatelessWidget {
  HomePageCard1({required this.cardtext});

  final String cardtext;


  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery. of(context). size. width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
      margin: EdgeInsets.only(left: 8,right: 5,top: 10,bottom: 5),
      height: 55,
      width: screenwidth*0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.grey.withOpacity(0.5)
      ),
      child: Row(
        children: [
          Image.asset('assets/images/73775.png'),
          Container(
            child: Text(
              cardtext,
              style: TextStyle(color: Colors.white),
              softWrap: true,
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
