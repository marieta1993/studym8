import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/all_courses_screen/all_courses_main_screen.dart';
import 'package:studym8/presentation/screens/all_courses_screen/course_individual_screen.dart';
import 'package:studym8/presentation/screens/homepage_screen/homepage_screen.dart';
import 'package:studym8/presentation/screens/my_courses_screen/my_courses_screen.dart';

Route<dynamic>? onGenerateTabRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/main":
      return MaterialPageRoute(
        builder: (context) => const HomepageScreen(),
        settings: settings,
      );
    case "/all_courses":
      return MaterialPageRoute(
          builder: (context) => const AllCoursesMainScreen());
    case "/my_courses":
      return MaterialPageRoute(
          builder: (context) => const MyCoursesScreen(),
          settings: settings,
          fullscreenDialog: true);
    case "/course_individual":
      return MaterialPageRoute(
          builder: (context) =>
              CourseIndividualScreen(data: settings.arguments),
          settings: settings);
  }
  return null;
}

class HomeCustomRoute extends StatelessWidget {
  const HomeCustomRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Navigator(
      initialRoute: '/main',
      onGenerateRoute: onGenerateTabRoute,
    );
  }
}
