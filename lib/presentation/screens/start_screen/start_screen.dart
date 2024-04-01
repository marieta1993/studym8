import 'package:flutter/material.dart';
import 'package:studym8/localization/app_strings_keys.dart';
import 'package:studym8/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/images/images.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return const OnboardingScreen();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              studym8,
              style: brandingTitleStyle,
            ),
            const SizedBox(height: 16.0),
            Image.asset(loading),
          ],
        ),
      )),
    );
  }
}
