import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/presentation/widgets/custom_card/custom_card.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class AllCoursesMainScreen extends StatelessWidget {
  const AllCoursesMainScreen({super.key});

  TabBar get _tabBar => const TabBar(
        labelColor: Colors.white,
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.text_snippet_outlined)),
          Tab(icon: Icon(Icons.favorite_border)),
          Tab(icon: Icon(Icons.account_box_rounded)),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
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
          body: TabBarView(
            children: [
              Icon(Icons.home),
              // Icon(Icons.text_snippet_outlined),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  CustomCard(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: const Text('Revolution, they...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: const Text('Revolution, they...'),
                  ),
                ],
              ),

              Icon(Icons.favorite_border),
              Icon(Icons.account_box_rounded),
            ],
          ),
          bottomNavigationBar: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: primaryColor,
              child: _tabBar,
            ),
          ),
        ),
      ),
    );

    // Scaffold(

    //   body:
  }
}
