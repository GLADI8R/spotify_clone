import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';




class SongsList extends StatefulWidget {

  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  static String id= 'song_list';

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery. of(context). size. height;

    return Scaffold(
      backgroundColor: kBlack,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: (){
                // pull to homescreen
              },
            ),
            pinned: true,
            expandedHeight: screenheight*0.5 ,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('playlist1'),
            ),
          )
        ],
      ),
    );
  }
}
