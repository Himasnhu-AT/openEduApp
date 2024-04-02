import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:openedu/constants/color_schemes.g.dart';
import 'package:openedu/screens/auth/sign_in_screen.dart';
import 'package:openedu/screens/auth/sign_up_screen.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

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
              // child: LottieBuilder.asset("assets/anim/GetStarted.json"),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: LottieBuilder.asset("assets/anim/GetStarted3.json"),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Get Started!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'So, what are you waiting for? Get started with openEdu and start learning today!',
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
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Sign UP',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Sign IN',
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
