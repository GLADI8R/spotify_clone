// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/components/home_page_card_1.dart';
import 'package:spotify_clone/components/home_page_square_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery. of(context). size. width;
    double screenheight = MediaQuery. of(context). size. height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [Container(
            decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.0000001, -0.5), // 10% of the width, so there are ten blinds.
          colors: <Color>[
            kGreen,
            Color(0xaf006400),
            Color(0xaf006400),
            Color(0xff000000),
            Color(0xff000000),
            Color(0xff000000),


                ],
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [

                SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                          ' Good Evening',
                          style: kHeadingTextStyle,
                        ),
                    const Icon(
                          Icons.restore,
                          color: Colors.white,
                          size: 30,
                        ),
                        // const SizedBox(width:20,),
                    const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        ),



                    // const SizedBox(width: 110,),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Table(
                    children: [
                      TableRow(
                        children: <Widget>[
                          HomePageCard1(cardtext: 'playldasg',),
                          HomePageCard1(cardtext: 'playlist2',),
                        ]
                      ),
                      TableRow(
                          children: <Widget>[
                            HomePageCard1(cardtext: 'playlist3'),
                            HomePageCard1(cardtext: 'playlist4'),
                          ]
                      ),
                      TableRow(
                          children: <Widget>[
                            HomePageCard1(cardtext: 'playlist5'),
                            HomePageCard1(cardtext: 'playlist6'),
                          ]
                      )

                    ],
                  )
                ),
                Text(
                  'Stories of hope from the second wave',
                  style: kHeadingTextStyle,
                  softWrap: true,
                ),

                Container(
                  height:screenheight*0.21 ,
                  width: double.infinity,

                  margin: EdgeInsets.only(bottom: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                    ],
                  ),

                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hits of yesterday and today',
                    softWrap: true,
                    style: kHeadingTextStyle,
                  ),
                ),
                Container(
                  height:screenheight*0.21 ,
                  width: double.infinity,

                  margin: EdgeInsets.only(bottom: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                    ],
                  ),

                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hits of yesterday and today',
                    softWrap: true,
                    style: kHeadingTextStyle,
                  ),
                ),
                Container(
                  height:screenheight*0.21 ,
                  width: double.infinity,

                  margin: EdgeInsets.only(bottom: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                      HomePageSquareCard(screenwidth: screenwidth),
                    ],
                  ),

                ),


              ],
            ),
          )
    ],
        ),
      ),
    );
  }
}


