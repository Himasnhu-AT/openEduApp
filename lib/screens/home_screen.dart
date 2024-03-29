import 'package:flutter/material.dart';
import 'package:openedu/widgets/course_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
          child: (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseCard(
            imagePath: 'assets/images/splashScreen.jpeg',
            courseName: 'Flutter Course',
          ),
          SizedBox(height: 20),
          CourseCard(
            imagePath: 'assets/images/splashScreen.jpeg',
            courseName: 'Dart Course',
          ),
        ],
      ))),
    );
  }
}
