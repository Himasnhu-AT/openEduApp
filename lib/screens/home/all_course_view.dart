import 'package:flutter/material.dart';
import 'package:openedu/screens/course_detail_page.dart';
import 'package:openedu/widgets/course_card.dart';

class AllCourseScreenView extends StatefulWidget {
  const AllCourseScreenView({super.key});

  @override
  State<AllCourseScreenView> createState() => _AllCourseScreenViewState();
}

class _AllCourseScreenViewState extends State<AllCourseScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
