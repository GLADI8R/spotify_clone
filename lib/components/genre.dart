// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/genre_card.dart';

GridView topGenreCard = GridView.count(
  crossAxisSpacing: 15.0,
  mainAxisSpacing: 15.0,
  childAspectRatio: (1 / 0.55), //set the height of card
  shrinkWrap: true,
  crossAxisCount: 2,
  children: [
    const GenreCard(Color(0xff8d67ab), 'Pop'),
    const GenreCard(Color(0xffba5d07), 'Hip-Hop'),
    const GenreCard(Color(0xffdc148c), 'Dance/Electronic'),
    const GenreCard(Color(0xffff4632), 'Bollywood'),
  ],
);

GridView genreCard = GridView.count(
  crossAxisSpacing: 15.0,
  mainAxisSpacing: 15.0,
  childAspectRatio: (1 / 0.55), //set the height of card
  shrinkWrap: true,
  crossAxisCount: 2,
  children: [
    const GenreCard(Color(0xff27856a), 'Podcasts'),
    const GenreCard(Color(0xffe8115b), 'New Releases'),
    const GenreCard(Color(0xff8d67ab), 'Charts'),
    const GenreCard(Color(0xff1e3264), 'Made For You'),
    const GenreCard(Color(0xff1e3264), 'Concerts'),
    const GenreCard(Color(0xff8d67ab), 'Pop'),
    const GenreCard(Color(0xffba5d07), 'Hip-Hop'),
    const GenreCard(Color(0xffdc148c), 'Dance/Electronic'),
    const GenreCard(Color(0xffff4632), 'Bollywood'),
  ],
);
