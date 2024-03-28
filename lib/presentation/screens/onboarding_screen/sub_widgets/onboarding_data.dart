import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/model/onboarding_data/onboarding_data_model.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class OnboardingData extends StatelessWidget {
  final OnboardingDataModel data;
  const OnboardingData({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          data.title,
          style: onboardingTitle,
        ),
        Expanded(child: Image.asset(data.image)),
        Text(
          data.description,
          style: onboardingDesc,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
