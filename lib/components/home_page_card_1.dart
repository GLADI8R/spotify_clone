import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

class HomePageCard1 extends StatelessWidget {
  HomePageCard1({required this.cardtext});

  final String cardtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      margin: EdgeInsets.only(left: 8,right: 5,top: 10,bottom: 5),
      height: 70,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: kGrey,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: kGrey,
            child: Image.asset('assets/images/73775.png'),
          ),
          Text(cardtext,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
