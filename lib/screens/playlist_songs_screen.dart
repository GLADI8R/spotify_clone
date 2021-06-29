import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/components/home_page_square_card.dart';




class SongsList extends StatefulWidget {

  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {

  List<String> songs= [
    'abcd',
    'efgh',
    'ijkl',
    'mnop',
    'qrst',
    'uvw',
    'xyz',
    'xyz',
    'xyz',
    'xyz'
  ];

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery. of(context). size. height;
    double screenwidth = MediaQuery. of(context). size. width;

    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: kBlack,

              pinned: true,

              expandedHeight: screenheight*0.4 ,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('PlayList1',style: kCardTextStyle,),
                background: Padding(
                  padding: EdgeInsets.only(top: 20),
                    child: HomePageSquareCard(imageAsset: 'assets/images/square.webp',playlistText: 'PLAYLIST1',))
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(25),
                child: IconButton(
                  icon: Icon(Icons.play_arrow,color: Colors.white,size: 50,),
                  onPressed: (){

                  },


                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.all(15),
                          color: kBlack,

                          height: screenheight/15,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Image.asset('assets/images/square.webp'),
                              Text(
                              songs[index],
                              style: kCardTextStyle,
                            ),

                          ]
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

// Container(
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: [
// Colors.cyan,
// Colors.black
// ]
// )
// ),
// child: Column(
// children: [
// SizedBox(
// height: 100,
// ),
// Text('playlist 1'),
// Icon(Icons.play_arrow),
// ]
// ),
// )