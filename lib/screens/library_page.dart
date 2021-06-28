// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/components/library_list.dart';
import 'package:spotify_clone/styles/constants.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: kBlack,
          ),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: kBlack,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                      offset: (Offset(0.0, 0.75)),
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(
                    top: 35.0, left: 16.0, right: 16.0, bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: kGrey,
                          radius: 17.0,
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        const Text('Your Library', style: kHeadingTextStyle),
                        const Spacer(),
                        const Icon(Icons.search_sharp, color: Colors.white),
                        const SizedBox(width: 17.0),
                        const Icon(Icons.add_outlined, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: libraryList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
