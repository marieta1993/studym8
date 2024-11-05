import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/my_courses_screen/my_course_individual_screen.dart';
import 'package:studym8/presentation/screens/my_courses_screen/my_courses_screen.dart';

Route<dynamic>? onGenerateTabRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/my_courses_main":
      return MaterialPageRoute(
        builder: (context) => const MyCoursesScreen(),
        settings: settings,
      );
    case "/my_courses_individual":
      return MaterialPageRoute(
          builder: (context) => const MyCourseIndividualScreen(courseId: 1));
  }
  return null;
}

class MyCoursesCustomRoute extends StatelessWidget {
  const MyCoursesCustomRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: "/my_courses_main",
      onGenerateRoute: onGenerateTabRoute,
    );
  }
}
