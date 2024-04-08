import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studym8/model/course_data/course_data_model.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class CustomCard extends StatelessWidget {
  final CourseData data;

  const CustomCard({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 164 / 141,
              child: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(data.image!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
            Text(
              data.title,
              style: mediumRoboto,
              maxLines: 1,
            ),
            Text(
              data.tutor!,
              style: mediumRoboto12,
            ),
            Text(
              data.price.toString(),
              style: mediumRoboto12,
            ),
            Row(
              children: [
                Text(data.rating.toString()),
                for (int i = 0; i < 5; i++)
                  const Icon(Icons.star, color: Colors.amberAccent),
              ],
            ),
          ]),
    );
  }
}
