import 'package:flutter/material.dart';
import 'package:studym8/model/course_data/course_data_model.dart';
import 'package:studym8/model/course_data/my_course_all_data_model.dart';
import 'package:studym8/model/course_data/my_course_data_model.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class MyCourseIndividualScreen extends StatelessWidget {
  final int courseId;
  MyCourseIndividualScreen({required this.courseId, super.key});
  final myCourseData = MyCourseAllData(
      courseData: MyCourseData(
          id: 1,
          title: 'Introduction to UI Design',
          image: 'resources/images/card_img_1.png',
          duration: '3 hrs 45 mins',
          countOfVideos: 15),
      videos: [
        Video(
            title: 'Section 1 - Introduction',
            subtitre: true,
            isDownload: true,
            duration: '01:30')
      ]);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  myCourseData.courseData.image,
                  width: 500,
                  height: 400,
                ),
              ],
            ),
            bottom: const TabBar(
              labelColor: primaryColor,
              labelStyle: regularBold16,
              dividerColor: Colors.transparent,
              indicatorPadding: EdgeInsets.symmetric(vertical: 4),
              tabs: [
                Tab(text: 'Lectures'),
                Tab(text: 'More'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: myCourseData.videos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile();
                  }),
              Icon(Icons.directions_transit),
            ],
          ),
        ));
  }
}
