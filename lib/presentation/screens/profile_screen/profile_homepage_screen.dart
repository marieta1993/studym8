import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/all_courses_screen/all_courses_main_screen.dart';
import 'package:studym8/presentation/screens/all_courses_screen/course_individual_screen.dart';
import 'package:studym8/presentation/screens/favorite_screen/favorite_screen.dart';
import 'package:studym8/presentation/screens/homepage_screen/homepage_screen.dart';
import 'package:studym8/presentation/screens/my_courses_screen/my_courses_screen.dart';
import 'package:studym8/presentation/screens/profile_screen/profile_screen.dart';
import 'package:studym8/presentation/screens/profile_screen/tab_navigator.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';
import 'package:studym8/routh/home_custom_route.dart';

import '../../../routh/my_courses_custom_route.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class ProfileHomepageScreen extends StatefulWidget {
  const ProfileHomepageScreen({super.key});

  @override
  State<ProfileHomepageScreen> createState() => _ProfileHomepageScreenState();
}

class _ProfileHomepageScreenState extends State<ProfileHomepageScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        // TabNavigator(
        //   tabNavigatorKey: navigatorKey,
        //   currentIndex: _selectedIndex,
        //   routeBuilders: onGenerateTabRoute,
        // ),
        const HomeCustomRoute(),
        const MyCoursesCustomRoute(),
        const FavoriteScreen(),
        const ProfileScreen()
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined),
              label: 'My Courses',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favourites',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: 'Profile',
              backgroundColor: primaryColor)
        ],
      ),
    );

    // Scaffold(

    //   body:
  }
}
