// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/components/home_page_card_1.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment(0.0000001, -0.5), // 10% of the width, so there are ten blinds.
        colors: <Color>[
          Color(0xff006400),
          Color(0xff000000),
          Color(0xff000000),
          Color(0xff000000),

              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100,),
              Row(
                children: [
                  const Text(
                    ' Good Evening',
                    style: kHeadingTextStyle,
                  ),
                  // const SizedBox(width: 110,),
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
                ],
              ),
              Container(
                height: 500,
                width: 200,
                child: Table(
                  children: [
                    TableRow(
                      children: <Widget>[
                        HomePageCard1(cardtext: 'playlist1',),
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
              )

            ],
          ),
        ),
      ),
    );
  }
}

