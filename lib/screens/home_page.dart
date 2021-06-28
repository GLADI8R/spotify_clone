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
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.0000001,
                      -0.5), // 10% of the width, so there are ten blinds.
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
              padding: const EdgeInsets.only(left: 6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        ' Good Evening',
                        style: kHomeHeadingStyle,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.restore,
                        color: Colors.white,
                        size: 26,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 26,
                      ),
                      const SizedBox(
                        width: 10.0,
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10.0, bottom: 20),
                    child: Table(
                      children: [
                        TableRow(children: <Widget>[
                          HomePageCard1(
                              cardtext: 'playldasg',
                              imageAsset: 'assets/images/73775.png'),
                          HomePageCard1(
                              cardtext: 'playlist2',
                              imageAsset: 'assets/images/73775.png'),
                        ]),
                        TableRow(children: <Widget>[
                          HomePageCard1(
                              cardtext: 'playlist3',
                              imageAsset: 'assets/images/73775.png'),
                          HomePageCard1(
                              cardtext: 'playlist4',
                              imageAsset: 'assets/images/73775.png'),
                        ]),
                        TableRow(
                          children: <Widget>[
                            HomePageCard1(
                              cardtext: 'playlist5',
                              imageAsset: 'assets/images/73775.png',
                            ),
                            HomePageCard1(
                                cardtext: 'playlist6',
                                imageAsset: 'assets/images/73775.png'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Stories of hope from the second wave',
                            style: kHomeHeadingStyle,
                            softWrap: true,
                          ),
                        ),
                      ),
                      Container(
                        height: screenheight * 0.25,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 20),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            HomePageSquareCard(
                              imageAsset: 'assets/images/naruto.jpg',
                              playlistText: 'hellllo',
                            ),
                            HomePageSquareCard(
                                imageAsset: 'assets/images/naruto.jpg',
                                playlistText: 'hellllo'),
                            HomePageSquareCard(
                                imageAsset: 'assets/images/naruto.jpg',
                                playlistText: 'hellllo'),
                            HomePageSquareCard(
                                imageAsset: 'assets/images/naruto.jpg',
                                playlistText: 'hellllo'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hits of yesterday and today',
                        softWrap: true,
                        style: kHomeHeadingStyle,
                      ),
                    ),
                  ),
                  Container(
                    height: screenheight * 0.25,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hits of yesterday and today',
                        softWrap: true,
                        style: kHomeHeadingStyle,
                      ),
                    ),
                  ),
                  Container(
                    height: screenheight * 0.25,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                        HomePageSquareCard(
                            imageAsset: 'assets/images/naruto.jpg',
                            playlistText: 'hellllo'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
