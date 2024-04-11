import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:studym8/model/course_data/my_course_data_model.dart';
import 'package:studym8/presentation/screens/my_courses_screen/my_course_individual_screen.dart';
import 'package:studym8/presentation/screens/my_courses_screen/my_course_item_card.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<MyCourseData> courses = [
      MyCourseData(
          id: 1,
          title: 'Introduction to UI Design',
          image: 'resources/images/card_img_1.png',
          duration: '3 hrs 45 mins',
          countOfVideos: 15),
      MyCourseData(
          id: 2,
          title: 'Basics of Figma',
          image: 'resources/images/card_img_2.png',
          duration: '2 hrs 45 mins',
          countOfVideos: 12),
      MyCourseData(
          id: 3,
          title: 'Introduction to Data Science',
          image: 'resources/images/card_img_3.png',
          duration: '2 hrs 45 mins',
          countOfVideos: 10),
      MyCourseData(
          id: 4,
          title: 'Basics of Adobe XD',
          image: 'resources/images/card_img_4.png',
          duration: '2 hrs 45 mins',
          countOfVideos: 13),
      MyCourseData(
          id: 5,
          title: 'Introduction to UI Design',
          image: 'resources/images/card_img_1.png',
          duration: '3 hrs 45 mins',
          countOfVideos: 15),
      MyCourseData(
          id: 6,
          title: 'Basics of Figma',
          image: 'resources/images/card_img_2.png',
          duration: '2 hrs 45 mins',
          countOfVideos: 12),
      MyCourseData(
          id: 7,
          title: 'Introduction to Data Science',
          image: 'resources/images/card_img_3.png',
          duration: '2 hrs 45 mins',
          countOfVideos: 10),
      MyCourseData(
          id: 8,
          title: 'Basics of Adobe XD',
          image: 'resources/images/card_img_4.png',
          duration: '2 hrs 45 mins',
          countOfVideos: 13)
    ];

    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              'My Courses',
              style: allCourseHeading,
            ),
            bottom: const TabBar(
              labelColor: primaryColor,
              labelStyle: regularBold16,
              dividerColor: Colors.transparent,
              indicatorPadding: EdgeInsets.symmetric(vertical: 4),
              tabs: [
                Tab(text: 'Ongoing'),
                Tab(text: 'Completed'),
                Tab(text: 'Certificates'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: courses.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return MyCourseIndividualScreen(
                                courseId: courses[index].id);
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: MyCourseItemCard(courseData: courses[index]),
                        ));
                  }),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ));
  }
}
