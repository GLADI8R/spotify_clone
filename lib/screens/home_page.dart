import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: kBlack,
          ),
        ),
      ),
    );
  }
}
