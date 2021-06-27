// import 'package:flutter/material.dart';
// import 'package:spotify_clone/components/home_page_square_card.dart';
// import 'package:spotify_clone/styles/constants.dart';
//
//
// class TitleAndPlaylists extends StatelessWidget {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     double screenwidth = MediaQuery. of(context). size. width;
//     double screenheight= MediaQuery. of(context). size. height;
//
//     return Column(
//         children: [
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               'Stories of hope from the second wave',
//               style: kHeadingTextStyle,
//               softWrap: true,
//             ),
//           ),
//           Container(
//             height:screenheight*0.25 ,
//             width: double.infinity,
//
//             margin: EdgeInsets.only(bottom: 20),
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 HomePageSquareCard(screenwidth: screenwidth,imageAsset: 'assets/images/naruto.jpg',playlistText: 'hellllo',),
//                 HomePageSquareCard(screenwidth: screenwidth,imageAsset: 'assets/images/naruto.jpg',playlistText: 'hellllo'),
//                 HomePageSquareCard(screenwidth: screenwidth,imageAsset: 'assets/images/naruto.jpg',playlistText: 'hellllo'),
//                 HomePageSquareCard(screenwidth: screenwidth,imageAsset: 'assets/images/naruto.jpg',playlistText: 'hellllo'),
//               ],
//             ),
//
//           ),
//         ]
//     );
//   }
// }
