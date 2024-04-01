import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studym8/localization/app_strings_keys.dart';
import 'package:studym8/model/onboarding_data/onboarding_data_model.dart';
import 'package:studym8/presentation/screens/get_you_in/get_you_in_screen.dart';
import 'package:studym8/presentation/screens/onboarding_screen/sub_widgets/onboarding_data.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List data = [
    OnboardingDataModel(
        image: 'resources/images/onb_img_1.png',
        title: 'Learn',
        description: 'Learn anytime & anywhere easily and conveniently'),
    OnboardingDataModel(
        image: 'resources/images/onb_img_2.png',
        title: 'Knowledge',
        description: 'Gain knowledge & skills ready for the job market'),
    OnboardingDataModel(
        image: 'resources/images/onb_img_3.png',
        title: 'Collaborative Study',
        description: 'Study in groups, Share ideas'),
  ];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: OnboardingData(data: data[counter])),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 34.0),
              child: Text(
                '${counter + 1} of ${data.length}',
                textAlign: TextAlign.center,
                style: onboardingPageination,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: CustomButton(
                          text: skip.localized, onPressed: skipButtonAction)),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: CustomButton(
                      text: next.localized,
                      onPressed: nextButtonAction,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  void nextButtonAction() {
    if (counter == data.length - 1) {
      print("goo to next screen");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return const GetYouIn();
      }));
    } else {
      setState(() {
        if (counter < data.length - 1) {
          counter++;
        }
      });
    }
  }

  void skipButtonAction() {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return const GetYouIn();
    }));
  }
}
