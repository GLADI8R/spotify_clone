// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/components/genre.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                title: const Padding(
                  padding:
                      const EdgeInsets.only(top: 60.0, left: 16.0, right: 16.0),
                  child: const Text(
                    "Search",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                // flexibleSpace: const FlexibleSpaceBar(
                //   title: Text(
                //     "Search",
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 30.0,
                //     ),
                //   ),
                // ),
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
