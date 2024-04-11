import 'package:flutter/material.dart';
import 'package:studym8/model/course_data/course_data_model.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class CourseItemCardScreen extends StatelessWidget {
  final CourseData courseData;
  const CourseItemCardScreen({required this.courseData, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(courseData.image!),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                color: primaryColor,
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      courseData.title.substring(0, 15),
                      style: mediumRoboto12.copyWith(color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          courseData.rating.toString(),
                          style: mediumRoboto12.copyWith(color: Colors.white),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
