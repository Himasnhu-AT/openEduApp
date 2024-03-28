import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:openedu/color_schemes.g.dart';
import 'package:openedu/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(children: [
          Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: LottieBuilder.asset("assets/anim/splashScreen.json"),
            ),
          ),
          const Spacer(),
          Text(
            'OpenEdu',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: lightColorScheme.primary,
            ),
          ),
          Text(
            "learn like never before",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: lightColorScheme.secondary,
            ),
          )
        ]),
        splashTransition: SplashTransition.fadeTransition,
        duration: 4000,
        splashIconSize: 500,
        nextScreen: const HomeScreen());
  }
}
