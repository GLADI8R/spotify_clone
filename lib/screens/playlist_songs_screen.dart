import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';




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
    'xyz'
  ];

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery. of(context). size. height;

    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: kBlack,
              leading: IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              pinned: true,

              expandedHeight: screenheight*0.4 ,
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('PlayList1',style: kCardTextStyle,)
                ),
              )
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.all(15),
                          color: kBlack,

                          height: screenheight/10,
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