// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

class SongsList extends StatefulWidget {
  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  List<String> songs = [
    'Perfect',
    'Never Enough',
    "'Could'nt Be Better",
    'Em Calls Paul',
    "Till It's gone",
    'Black Sheep',
    'Lighters',
    'The Way I Am',
    'Wonder',
    'Lifestyle'
  ];

  List<String> artist = [
    'Ed Sheeran',
    'Loren Allred',
    'Kelly Clarkson,Ugly Dolls Cast',
    'Eminem',
    'YelaWolf',
    'YelaWolf',
    'Bad Meets Evil',
    'Eminem',
    'Shawn Mendes',
    'Jason Derulo, Adam Levine, Maroon 5'
  ];

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: kBlack,
              pinned: true,
              centerTitle: true,
              expandedHeight: screenheight * 0.45,
              flexibleSpace: Stack(
                overflow: Overflow.visible,
                alignment: Alignment.bottomCenter,
                children: [
                  FlexibleSpaceBar(
                    title: const Text(
                      'PlayList1',
                      style: kCardTextStyle,
                    ),
                    background: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            kGreen,
                            kBlack,
                            kBlack,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 40, right: 80, left: 80, bottom: 80),
                        child: Image.asset(
                          'assets/images/gaming.jpeg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: kGreen,
                      child: IconButton(
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    color: kBlack,
                    height: screenheight / 15,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Image.asset('assets/images/$index.jpeg'),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              songs[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              artist[index],
                              style: const TextStyle(
                                  color: Colors.white38, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                childCount: songs.length, // 1000 list items
              ),
            ),
          ],
        ),
      ),
    );
  }
}
