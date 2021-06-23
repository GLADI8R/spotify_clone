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
        end: Alignment(0.0000001, -0.5), // 10% of the width, so there are ten blinds.
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
                  Text(' Good Evening',style: kHeadingTextStyle,),
                  SizedBox(width: 110,),
                  Icon(Icons.restore,color: Colors.white,size: 30,),
                  SizedBox(width:20,),
                  Icon(Icons.settings,color: Colors.white,size: 30,),
                ],
              ),
              // Expanded(
              //   child: ListView(
              //     children: [
              //       Container(
              //         color: Colors.white30,
              //         child: Row(
              //           crossAxisAlignment: CrossAxisAlignment.stretch,
              //           children: [
              //             Icon(Icons.photo,color: Colors.white,),
              //             Text('Daily Mix 1')
              //           ],
              //         ),
              //       ),
              //
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
