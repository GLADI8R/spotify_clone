import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/components/navbar.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenSpotify extends StatelessWidget {
  const SplashScreenSpotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: const NavigationBar(),
      image: Image.asset('assets/images/spotifypng.png'),
      photoSize: 100.0,
      backgroundColor: kBlack,
      loaderColor: kBlack,
    );
  }
}
