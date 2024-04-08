import 'package:flutter/material.dart';
import 'package:openedu/widgets/topic_card.dart';

class CourseDetailPage extends StatefulWidget {
  final String courseCardId;

  const CourseDetailPage({super.key, required this.courseCardId});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    var topicCards = [
      {
        'imageURL': 'assets/images/splashScreen.jpeg',
        'name': 'Introduction to Flutter',
        'noOfModules': 10,
        'progressCheck': 5,
      },
      {
        'name': 'Dart Programming',
        'imageURL': 'assets/images/splashScreen.jpeg',
        'noOfModules': 5,
        'progressCheck': 2,
      },
      {
        'name': 'State Management',
        'imageURL': 'assets/images/splashScreen.jpeg',
        'noOfModules': 8,
        'progressCheck': 3,
      },
      {
        'name': 'Firebase Integration',
        'imageURL': 'assets/images/splashScreen.jpeg',
        'noOfModules': 6,
        'progressCheck': 1,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.courseCardId.toUpperCase()}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Topics related to ${widget.courseCardId} will be displayed here.',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView.builder(
                  itemCount: topicCards.length,
                  itemBuilder: (context, index) {
                    return TopicCardWidget(
                      imagePath: topicCards[index]['imageURL'].toString(),
                      topicName: topicCards[index]['name'].toString(),
                      noOfModules: topicCards[index]['noOfModules'].toString(),
                      progressCheck:
                          topicCards[index]['progressCheck'].toString(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
