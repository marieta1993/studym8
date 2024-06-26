import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:studym8/model/course_data/my_course_data_model.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class MyCourseItemCard extends StatefulWidget {
  final MyCourseData courseData;
  const MyCourseItemCard({required this.courseData, super.key});

  @override
  State<MyCourseItemCard> createState() => _MyCourseItemCardState();
}

class _MyCourseItemCardState extends State<MyCourseItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBgColor,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, top: 10, bottom: 10, right: 4),
        child: Row(
          children: [
            Image.asset(widget.courseData.image),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.courseData.title,
                    style: mediumRoboto,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      widget.courseData.duration,
                      style: courseTutorName,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      value: 1 / widget.courseData.countOfVideos * 10,
                      color: Colors.white,
                      backgroundColor: Colors.white,
                      valueColor: AlwaysStoppedAnimation(primaryColor),
                      minHeight: 7.0,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  Text('${widget.courseData.countOfVideos.toString()} videos')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
