import 'package:flutter/material.dart';
import 'package:openedu/screens/course_detail_page.dart';
import 'package:openedu/widgets/course_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseDetailPage(
                        courseCardId:
                            'dbms'), // Pass the courseCardId to the CourseDetailPage
                  ),
                );
              },
              child: const CourseCard(
                imagePath: 'assets/images/splashScreen.jpeg',
                courseName: 'DBMS Course',
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseDetailPage(
                        courseCardId:
                            'javascript'), // Pass the courseCardId to the CourseDetailPage
                  ),
                );
              },
              child: const CourseCard(
                imagePath: 'assets/images/splashScreen.jpeg',
                courseName: 'Javascript Course',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
