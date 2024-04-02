import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:openedu/constants/color_schemes.g.dart';
import 'package:openedu/screens/welcome/welcome_screen_3.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: LottieBuilder.asset("assets/anim/WhatWeOffer.json"),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Why we are doing this?',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'This initiative is to provide free education to all. We believe that education is a basic right and should be accessible to all. We are a non-profit, open-source initiative powered by: ',
              style: TextStyle(
                fontSize: 24,
                color: lightColorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.justify, // Set text alignment to justify
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 4,
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Microsoft and SynthAi-Labs',
                style: TextStyle(
                  fontSize: 24,
                  color: lightColorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WelcomeScreen3()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
