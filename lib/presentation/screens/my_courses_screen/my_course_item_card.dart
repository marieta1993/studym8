import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/model/course_data/my_course_data_model.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class MyCourseItemCard extends StatelessWidget {
  final MyCourseData courseData;
  const MyCourseItemCard({required this.courseData, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBgColor,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, top: 10, bottom: 10, right: 4),
        child: Row(
          children: [
            Image.asset(courseData.image),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    courseData.title,
                    style: mediumRoboto,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      courseData.duration,
                      style: courseTutorName,
                    ),
                  ),
                  Text('${courseData.countOfVideos.toString()} videos')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
