// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/components/genre.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchPage> {
  final double heightOfFirstContainer = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: kBlack,
          ),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 155.0,
                floating: false,
                pinned: true,
                backgroundColor: kBlack,
                flexibleSpace: FlexibleSpaceBar(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(child: Container(), flex: 2),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text(
                            'Search',
                            style: kHeadingTextStyle,
                          ),
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(30.0),
                  child: Container(
                    margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                    height: 48.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
                          child: Icon(
                            Icons.search,
                            color: kLightGrey,
                          ),
                        ),
                        const Text(
                          'Artists, songs or podcasts',
                          style: TextStyle(
                            color: kLightGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, i) {
                    if (i == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'Your top genres',
                              style: kCardTextStyle,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      );
                    } else if (i == 1) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: topGenreCard,
                      );
                    } else if (i == 2) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'Browse all',
                              style: kCardTextStyle,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: genreCard,
                    );
                  },
                  childCount: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
