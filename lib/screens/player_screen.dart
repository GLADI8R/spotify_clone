// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:spotify_clone/styles/constants.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  double sliderValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xFF4E5E5E), Color(0xFF131313)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'PLAYING FROM ARTIST',
                          style: TextStyle(color: Colors.white, fontSize: 11.0),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          'cloverscars',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 36.0,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 60.0),
                ),
                Image.asset(
                  'assets/images/TooFarGone.jpeg',
                  height: 312.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 72.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Too Far Gone',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Text(
                            'cloverscars,  4LEN',
                            style: TextStyle(color: kLightGrey, fontSize: 14.5),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 26.0,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6.0),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
                    trackHeight: 3.0,
                    overlayColor: Colors.white.withOpacity(0),
                  ),
                  child: Slider(
                    value: sliderValue,
                    min: 0.0,
                    max: 30.0,
                    activeColor: Colors.white,
                    inactiveColor: kGrey,
                    onChanged: (val) {
                      setState(() {
                        sliderValue = val;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Row(
                    children: [
                      Text(
                        '0:00',
                        style: TextStyle(color: kLightGrey, fontSize: 13.0),
                      ),
                      Spacer(),
                      Text(
                        '2:42',
                        style: TextStyle(color: kLightGrey, fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.shuffle_outlined,
                          color: Colors.white, size: 20.0),
                      Spacer(),
                      Icon(Icons.skip_previous,
                          color: Colors.white, size: 35.0),
                      Spacer(),
                      Icon(Icons.pause_circle_filled_outlined,
                          color: Colors.white, size: 70.0),
                      Spacer(),
                      Icon(Icons.skip_next, color: Colors.white, size: 35.0),
                      Spacer(),
                      Icon(Icons.repeat, color: Colors.white, size: 20.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
