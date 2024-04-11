import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studym8/model/course_data/course_data_model.dart';
import 'package:studym8/presentation/screens/all_courses_screen/course_individual_screen.dart';
import 'package:studym8/presentation/screens/all_courses_screen/course_item_card_screen.dart';
import 'package:studym8/resources/images/images.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CourseData> coursesData = const [
      CourseData(
          title: '1 Introduction to UI Design',
          image: courseImage,
          description:
              'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
          subTitle: 'About this course',
          tutor: ' Steve Holmes',
          instructor: 'Esther Howard',
          instructorRole: 'UI/UX Design Expert',
          instructorImage: instructorImage,
          rating: 4.0,
          price: 12.5,
          skills: [
            'User Interface Design (UI Design)',
            'UI/UX',
            'Design Pattern',
            'Design Tools',
            'Wireframe',
            'Mobile Design',
            'Web Design',
            'Prototyping'
          ]),
      CourseData(
          title: '2 Introduction to UI Design',
          image: courseImage,
          description:
              'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
          subTitle: 'About this course',
          tutor: ' Steve Holmes',
          instructor: 'Esther Howard',
          instructorRole: 'UI/UX Design Expert',
          instructorImage: instructorImage,
          rating: 5.0,
          price: 20.5,
          skills: [
            'User Interface Design (UI Design)',
            'UI/UX',
            'Design Pattern',
            'Design Tools',
            'Wireframe',
            'Mobile Design',
            'Web Design',
            'Prototyping'
          ]),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Courses',
                    style: courseSubtitle,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/all_courses');
                      },
                      child: const Text('See all')),
                ],
              ),
              Expanded(
                child: GridView.count(
                  childAspectRatio: 167 / 222,
                  primary: false,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  children: <Widget>[
                    for (CourseData data in coursesData)
                      InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return CourseIndividualScreen(data: data);
                            }));
                          },
                          child: CourseItemCardScreen(courseData: data)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
