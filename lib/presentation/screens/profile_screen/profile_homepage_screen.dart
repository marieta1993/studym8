import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/all_courses_screen/all_courses_main_screen.dart';
import 'package:studym8/presentation/screens/all_courses_screen/course_individual_screen.dart';
import 'package:studym8/presentation/screens/my_courses_screen/my_courses_screen.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class ProfileHomepageScreen extends StatefulWidget {
  const ProfileHomepageScreen({super.key});

  @override
  State<ProfileHomepageScreen> createState() => _ProfileHomepageScreenState();
}

class _ProfileHomepageScreenState extends State<ProfileHomepageScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.0,
            leading: const Icon(
              Icons.menu,
              color: primaryColor,
              size: 28.0,
            ),
            title: const Text(
              textAlign: TextAlign.center,
              'Homepage',
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
          body: const SafeArea(child: AllCoursesMainScreen()),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            onTap: _navItemOnPressed,
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
          )),
    );

    // Scaffold(

    //   body:
  }

  void _navItemOnPressed(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return const ProfileHomepageScreen();
          }));
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return const MyCoursesScreen();
          }));
      }
    });
  }
}
