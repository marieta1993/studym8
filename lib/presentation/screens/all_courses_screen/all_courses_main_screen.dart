import 'package:flutter/material.dart';
import 'package:studym8/model/course_data/course_data_model.dart';
import 'package:studym8/presentation/screens/all_courses_screen/course_individual_screen.dart';
import 'package:studym8/presentation/widgets/custom_card/custom_card.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/images/images.dart';
import 'package:studym8/resources/theme/text_styles.dart';
import '../profile_screen/profile_homepage_screen.dart';

class AllCoursesMainScreen extends StatefulWidget {
  const AllCoursesMainScreen({super.key});

  @override
  State<AllCoursesMainScreen> createState() => _AllCoursesMainScreenState();
}

class _AllCoursesMainScreenState extends State<AllCoursesMainScreen> {
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
    CourseData(
        title: '3 Introduction to UI Design',
        image: courseImage,
        description:
            'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
        subTitle: 'About this course',
        tutor: ' Steve Holmes',
        instructor: 'Esther Howard',
        instructorRole: 'UI/UX Design Expert',
        instructorImage: instructorImage,
        rating: 3.0,
        price: 30.0,
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
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        leading: const Icon(
          Icons.menu,
          color: primaryColor,
          size: 28.0,
        ),
        title: const Text(
          textAlign: TextAlign.center,
          'All Courses',
          style: letGetsYouInTitle,
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications,
            color: primaryColor,
            size: 28,
          )
        ],
      ),
      body: SafeArea(
        // child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
        child: GridView.count(
          childAspectRatio: 167 / 222,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          children: <Widget>[
            for (CourseData data in coursesData)
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return CourseIndividualScreen(data: data);
                    }));
                  },
                  child: CustomCard(data: data)),
          ],
        ),
      ),
    );

    // Scaffold(

    //   body:
  }

  void navItemOnPressed(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return const ProfileHomepageScreen();
          }));
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return const AllCoursesMainScreen();
          }));
      }
    });
  }
}
