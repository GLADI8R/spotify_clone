// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/genre_card.dart';
import 'package:spotify_clone/styles/constants.dart';

Container topGenreCard = Container(
  child: Table(
    children: [
      const TableRow(
        children: <Widget>[
          GenreCard(Color(0xff8d67ab), 'Pop'),
          GenreCard(Color(0xffba5d07), 'Hip-Hop'),
        ],
      ),
      const TableRow(
        children: <Widget>[
          GenreCard(Color(0xffdc148c), 'Dance/Electronic'),
          GenreCard(Color(0xffff4632), 'Bollywood'),
        ],
      )
    ],
  ),
);

Container genreCard = Container(
  child: Table(
    children: [
      const TableRow(
        children: <Widget>[
          GenreCard(Color(0xff27856a), 'Podcasts'),
          GenreCard(Color(0xffe8115b), 'New Releases'),
        ],
      ),
      const TableRow(
        children: <Widget>[
          GenreCard(Color(0xff8d67ab), 'Charts'),
          GenreCard(Color(0xff1e3264), 'Made For You'),
        ],
      ),
      const TableRow(
        children: <Widget>[
          GenreCard(Color(0xff1e3264), 'Concerts'),
          GenreCard(Color(0xff8d67ab), 'Pop'),
        ],
      ),
      const TableRow(
        children: <Widget>[
          GenreCard(Color(0xffba5d07), 'Hip-Hop'),
          GenreCard(Color(0xffdc148c), 'Dance/Electronic'),
        ],
      ),
      const TableRow(
        children: <Widget>[
          GenreCard(Color(0xffff4632), 'Bollywood'),
          GenreCard(kBlack, ''),
        ],
      ),
    ],
  ),
);
