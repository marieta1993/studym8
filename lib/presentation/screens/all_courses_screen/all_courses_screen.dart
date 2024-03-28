import 'package:flutter/material.dart';
import 'package:studym8/model/course_data/course_data_model.dart';
import 'package:studym8/presentation/screens/enroll_payment_options/enroll_payment_options_screen.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/images/images.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class AllCoursesScreen extends StatefulWidget {
  const AllCoursesScreen({super.key});

  @override
  State<AllCoursesScreen> createState() => _AllCoursesScreenState();
}

class _AllCoursesScreenState extends State<AllCoursesScreen> {
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    const CourseData courseData = CourseData(
        title: 'Introduction to UI Design',
        image: courseImage,
        description:
            'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
        subTitle: 'About this course',
        tutor: ' Steve Holmes',
        instructor: 'Esther Howard',
        instructorRole: 'UI/UX Design Expert',
        instructorImage: instructorImage,
        rating: 0,
        skills: [
          'User Interface Design (UI Design)',
          'UI/UX',
          'Design Pattern',
          'Design Tools',
          'Wireframe',
          'Mobile Design',
          'Web Design',
          'Prototyping'
        ]);

    void enrollButtonAction() {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return const EnrollPaymentOptionsScreen();
      }));
    }

    void onStarPressed() {
      setState(() {
        _rating += 1;
      });
    }

    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(icon: const Icon(Icons.share), onPressed: () {})],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                courseData.image!,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  courseData.title,
                  style: allCourseHeading,
                ),
              ),
              Text(
                'Course Tutor:${courseData.tutor}',
                style: courseTutorName,
              ),
              InkWell(
                onTap: onStarPressed,
                child: Row(
                  children: [
                    Text('${_rating}'),
                    const SizedBox(
                      width: 9.0,
                    ),
                    for (var i = 0; i < 5; i++)
                      _rating > 0
                          ? const Icon(
                              Icons.star_outlined,
                              color: Colors.amberAccent,
                            )
                          : const Icon(
                              Icons.star_outline,
                            )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        courseData.subTitle!,
                        style: courseSubtitle,
                      ),
                    ),
                    RichText(
                        text: TextSpan(
                      text: courseData.description!,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: const <TextSpan>[
                        TextSpan(
                            text: ' ........Read More',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color.fromRGBO(61, 52, 139, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: 18))
                      ],
                    )),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 34.0, horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.language),
                          SizedBox(width: 16),
                          Text('100% online'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.pending_actions_sharp),
                          SizedBox(width: 16),
                          Text('Flexible deadlines'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.comment),
                          SizedBox(width: 16),
                          Text('Medium of Instruction: English'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      'Skills you will gain',
                      style: courseSubtitle,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: courseData.skills!
                        .map(
                          (e) => Padding(
                            padding:
                                const EdgeInsets.only(right: 8.0, bottom: 8),
                            child: CustomButton(
                              text: e.toString(),
                              onPressed: () {},
                              bgColor: primaryColor,
                            ),
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 34.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Text('Course Instructor', style: courseSubtitle),
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage(courseData.instructorImage!),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      courseData.instructor!,
                                      style: courseSubtitle,
                                    ),
                                    Text(courseData.instructorRole!),
                                  ]),
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right,
                            size: 34.0,
                          )
                        ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: CustomButton(
                        text: 'Enroll Now - \$50',
                        bgColor: primaryColor,
                        onPressed: enrollButtonAction,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
