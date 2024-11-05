import 'package:flutter/material.dart';
import 'package:studym8/model/course_data/my_course_all_data_model.dart';
import 'package:studym8/model/course_data/my_course_data_model.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class MyCourseIndividualScreen extends StatefulWidget {
  final int courseId;

  const MyCourseIndividualScreen({required this.courseId, super.key});

  @override
  State<MyCourseIndividualScreen> createState() =>
      _MyCourseIndividualScreenState();
}

class _MyCourseIndividualScreenState extends State<MyCourseIndividualScreen> {
  int _selectedIndex = -1;
  final myCourseData = const MyCourseAllData(
      courseData: MyCourseData(
          id: 1,
          title: 'Introduction to UI Design',
          image: 'resources/images/card_img_1.png',
          duration: '3 hrs 45 mins',
          countOfVideos: 15),
      videos: [
        Video(
            title: 'Section 1 - Introduction',
            subtitre: 'Introduction',
            isDownload: true,
            duration: '01:30'),
        Video(
            title: 'Section 2 - Interface & Layout',
            subtitre: 'Interface & Layout',
            isDownload: true,
            duration: '01:30'),
        Video(
            title: 'Section 4 - Intermediate Editing',
            subtitre: 'Intermediate Editing',
            isDownload: true,
            duration: '01:30'),
        Video(
            title: 'Section 5 - Titles & Graphics',
            subtitre: 'Titles & Graphics',
            isDownload: true,
            duration: '01:30'),
        Video(
            title: 'Section 5 - Titles & Graphics',
            subtitre: 'Titles & Graphics',
            isDownload: true,
            duration: '01:30'),
        Video(
            title: 'Section 6 - Titles & Graphics',
            subtitre: 'Titles & Graphics',
            isDownload: true,
            duration: '01:30'),
      ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 288,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: ExactAssetImage(myCourseData.courseData.image),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Introduction to UI Design',
                      style: allCourseHeading,
                    ),
                  ),
                  const TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelColor: primaryColor,
                    labelStyle: regularBold16,
                    dividerColor: Colors.transparent,
                    // indicatorPadding: EdgeInsets.symmetric(vertical: 4),
                    tabs: [
                      Tab(text: 'Lectures'),
                      Tab(text: 'More'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        ListView.builder(
                            // padding: const EdgeInsets.all(20),
                            itemCount: myCourseData.videos.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0,
                                          bottom: (index == _selectedIndex
                                              ? 8.0
                                              : 0)),
                                      child: Text(
                                        myCourseData.videos[index].title,
                                        style: mediumRoboto,
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0,
                                          horizontal: (index == _selectedIndex
                                              ? 8.0
                                              : 0)),
                                      onTap: () {
                                        setState(() {
                                          _selectedIndex = index;
                                        });
                                      },
                                      selected: index == _selectedIndex,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      selectedTileColor: primaryColor,
                                      title: Text(
                                        myCourseData.videos[index].subtitre,
                                        style: TextStyle(
                                            fontSize: (index == _selectedIndex)
                                                ? 24.0
                                                : 16.0,
                                            color: index == _selectedIndex
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      subtitle: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Icon(
                                              Icons.closed_caption,
                                              color: (index == _selectedIndex)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                              'Video - ${myCourseData.videos[index].duration.toString()} mins',
                                              style: TextStyle(
                                                  color: index == _selectedIndex
                                                      ? Colors.white
                                                      : Colors.black)),
                                        ],
                                      ),
                                      trailing: Icon(
                                          Icons.download_for_offline_outlined,
                                          size: (index == _selectedIndex)
                                              ? 30
                                              : 24,
                                          color: index == _selectedIndex
                                              ? Colors.white
                                              : Colors.black),
                                      selectedColor: primaryColor,
                                      hoverColor: Colors.grey,
                                    ),
                                  ],
                                ),
                              );
                            }),
                        Icon(Icons.directions_transit),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
