import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/resources/colors/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Image.asset(
              'resources/images/course_image.png',
              fit: BoxFit.fitWidth,
            )),
            Text('Course title'),
            Text('Tutor name'),
            Text('Price'),
            Row(
              children: [
                Text('4.5'),
                Icon(
                  Icons.star_border,
                  color: primaryColor,
                )
              ],
            )
          ]),
    );
  }
}
