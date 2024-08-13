import 'package:flutter/material.dart';
import 'package:openedu/screens/home/all_course_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const AllCourseScreenView(),
    );
  }
}
