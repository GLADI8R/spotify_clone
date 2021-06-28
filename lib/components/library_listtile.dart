// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

class LibraryListTile extends StatelessWidget {
  const LibraryListTile({ Key? key, required this.listTitle}) : super(key: key);

  final String listTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/73775.png',
          height: 70.0,
          width: 70.0,
          color: kGrey,
        ),
        const SizedBox(
          width: 16.0,
        ),
        Container(
          child: Text(
            listTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }
}