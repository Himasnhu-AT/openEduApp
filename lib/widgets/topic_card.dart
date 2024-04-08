import 'package:flutter/material.dart';

class TopicCardWidget extends StatelessWidget {
  final String imagePath;
  final String topicName;
  final String noOfModules;
  final String progressCheck;

  const TopicCardWidget({
    Key? key,
    required this.imagePath,
    required this.topicName,
    required this.noOfModules,
    required this.progressCheck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(20), // Adjust border radius as needed
          color: Colors.blue,
        ),
        child: Stack(
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 100, // Adjust image width as needed
                  height: 100, // Adjust image height as needed
                  fit: BoxFit.cover, // Adjust image fit as needed
                ),
              ),
            ),
            Positioned(
              bottom: 10, // Adjust position as needed
              left: 10, // Adjust position as needed
              child: Text(
                '$progressCheck/$noOfModules',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18, // Decreased font size for progress check
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 10, // Adjust position as needed
              left: 10, // Adjust position as needed
              child: Text(
                topicName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18, // Decreased font size for topic name
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
