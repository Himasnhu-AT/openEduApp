import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:openedu/constants/color_schemes.g.dart';
import 'package:openedu/screens/welcome/welcome_screen_2.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

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
              child: LottieBuilder.asset("assets/anim/welcome.json"),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Welcome to openEdu!',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify, // Set text alignment to justify
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'Your one-stop solution for all your educational needs. We are an non Profit, open source initiative to provide free education to all.',
              style: TextStyle(
                fontSize: 24,
                color: lightColorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.justify, // Set text alignment to justify
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
                      builder: (context) => const WelcomeScreen2()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Get Started',
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
