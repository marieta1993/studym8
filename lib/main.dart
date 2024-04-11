import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/auth_screens/login_screen/login_screen.dart';
import 'package:studym8/presentation/screens/get_you_in/get_you_in_screen.dart';
import 'package:studym8/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:studym8/presentation/screens/profile_screen/profile_homepage_screen.dart';
import 'package:studym8/presentation/screens/profile_screen/profile_screen.dart';
import 'package:studym8/presentation/screens/start_screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyM8',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      routes: {
        // '/': (context) => const StartScreen(),
        // '/onboarding': (context) => const OnboardingScreen(),
        // '/getyouin': (context) => const GetYouIn(),
        // '/signup': (context) => const LoginScreen(isSignUpPage: true),
        // '/login': (context) => const LoginScreen(isSignUpPage: false),
        '/profile': (context) => const ProfileScreen(),
        '/profilehomepage': (context) => const ProfileHomepageScreen(),
      },
    );
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const StartScreen(),
          settings: settings,
        );
      case "/onboarding":
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen(), settings: settings);
      case "/getyouin":
        return MaterialPageRoute(
            builder: (context) => const GetYouIn(), settings: settings);
      case "/signup":
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(isSignUpPage: true),
            settings: settings);
      case "/login":
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(isSignUpPage: false),
            settings: settings);
      case "/profile":
        return MaterialPageRoute(
            builder: (context) => const ProfileScreen(), settings: settings);
      case "/main":
        return MaterialPageRoute(
          builder: (context) => const ProfileHomepageScreen(),
          settings: settings,
        );
    }
    return null;
  }
}
