import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    super.key,
    required this.tabNavigatorKey,
    this.currentIndex = 0,
    required this.routeBuilders,
  });

  final Route<dynamic>? Function(RouteSettings) routeBuilders;
  final GlobalKey<NavigatorState> tabNavigatorKey;
  final int currentIndex;
  // final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: tabNavigatorKey,
      initialRoute: "/main",
      onGenerateRoute: routeBuilders,
    );
  }
}
