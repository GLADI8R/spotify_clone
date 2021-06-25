// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/genre_card.dart';

// GridView topGenreCard = GridView.count(
//   crossAxisSpacing: 15.0,
//   mainAxisSpacing: 15.0,
//   childAspectRatio: (1 / 0.55), //set the height of card
//   shrinkWrap: true,
//   crossAxisCount: 2,
//   children: [
//     const GenreCard(Color(0xff8d67ab), 'Pop'),
//     const GenreCard(Color(0xffba5d07), 'Hip-Hop'),
//     const GenreCard(Color(0xffdc148c), 'Dance/Electronic'),
//     const GenreCard(Color(0xffff4632), 'Bollywood'),
//   ],
// );

// GridView genreCard = GridView.count(
//   crossAxisSpacing: 15.0,
//   mainAxisSpacing: 15.0,
//   childAspectRatio: (1 / 0.55), //set the height of card
//   shrinkWrap: true,
//   crossAxisCount: 2,
//   children: [
//     const GenreCard(Color(0xff27856a), 'Podcasts'),
//     const GenreCard(Color(0xffe8115b), 'New Releases'),
//     const GenreCard(Color(0xff8d67ab), 'Charts'),
//     const GenreCard(Color(0xff1e3264), 'Made For You'),
//     const GenreCard(Color(0xff1e3264), 'Concerts'),
//     const GenreCard(Color(0xff8d67ab), 'Pop'),
//     const GenreCard(Color(0xffba5d07), 'Hip-Hop'),
//     const GenreCard(Color(0xffdc148c), 'Dance/Electronic'),
//     const GenreCard(Color(0xffff4632), 'Bollywood'),
//   ],
// );

class TopGenreCard extends StatelessWidget {
  const TopGenreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(),
        1: FlexColumnWidth(),
      },
      children: [
        const TableRow(
          children: [
            GenreCard(Color(0xff8d67ab), 'Pop', 7.5, 0),
            GenreCard(Color(0xffba5d07), 'Hip-Hop', 0, 7.5),
          ],
        ),
        const TableRow(
          children: [
            GenreCard(Color(0xffdc148c), 'Dance/Electronic', 7.5, 0),
            GenreCard(Color(0xffff4632), 'Bollywood', 0, 7.5),
          ],
        ),
      ],
    );
  }
}

class AllGenreCard extends StatelessWidget {
  const AllGenreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(),
        1: FlexColumnWidth(),
      },
      children: [
        const TableRow(
          children: [
            GenreCard(Color(0xff27856a), 'Podcasts', 7.5, 0),
            GenreCard(Color(0xffe8115b), 'New Releases', 0, 7.5),
          ],
        ),
        const TableRow(
          children: [
            GenreCard(Color(0xff8d67ab), 'Charts', 7.5, 0),
            GenreCard(Color(0xff1e3264), 'Made For You', 0, 7.5),
          ],
        ),
        const TableRow(
          children: [
            GenreCard(Color(0xff27856a), 'Podcasts', 7.5, 0),
            GenreCard(Color(0xffe8115b), 'New Releases', 0, 7.5),
          ],
        ),
        const TableRow(
          children: [
            GenreCard(Color(0xff8d67ab), 'Pop', 7.5, 0),
            GenreCard(Color(0xff1e3264), 'Concerts', 0, 7.5),
          ],
        ),
        const TableRow(
          children: [
            GenreCard(Color(0xffdc148c), 'Dance/Electronic', 7.5, 0),
            GenreCard(Color(0xffff4632), 'Bollywood', 0, 7.5),
          ],
        ),
        const TableRow(
          children: [
            GenreCard(Color(0xffba5d07), 'Hip-Hop', 7.5, 0),
            GenreCard(Color(0xffff4632), 'Bollywood', 0, 7.5),
          ],
        ),
      ],
    );
  }
}
