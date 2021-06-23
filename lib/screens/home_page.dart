// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

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
              end: Alignment(0.0000001,
                  -0.5), // 10% of the width, so there are ten blinds.
              colors: <Color>[
                Color(0x88FFFF8F),
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
              //SizedBox(height: 100,),
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
              // Expanded(
              //   child: ListView(
              //     key: key,
              //     children: [
              //       Container(
              //         decoration: const BoxDecoration(
              //           color: kLightGrey,
              //         ),
              //         child: Row(
              //           crossAxisAlignment: CrossAxisAlignment.stretch,
              //           children: [
              //             const Icon(
              //               Icons.photo,
              //               color: Colors.white,
              //             ),
              //             const Text(
              //               'Daily Mix 1',
              //               style: TextStyle(color: Colors.white),
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
