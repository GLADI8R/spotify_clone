// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/library_listtile.dart';

GridView libraryList = GridView.count(
  crossAxisCount: 1,
  padding: const EdgeInsets.all(16.0),
  mainAxisSpacing: 15.0,
  crossAxisSpacing: 15.0,
  shrinkWrap: true,
  childAspectRatio: (1 / 0.2),
  children: [
    const LibraryListTile(
      listTitle: 'Liked Songs',
      listAuthor: 'Spotify',
      listImage: 'assets/images/1.jpeg',
    ),
    const LibraryListTile(
      listTitle: 'All Out of 10s',
      listAuthor: 'Spotify',
      listImage: 'assets/images/allout10.jpeg',
    ),
    const LibraryListTile(
      listTitle: 'My Playlist',
      listAuthor: 'User',
      listImage: 'assets/images/3.jpeg',
    ),
    const LibraryListTile(
      listTitle: 'Electronic',
      listAuthor: 'Spotify',
      listImage: 'assets/images/4.jpeg',
    ),
  ],
);
