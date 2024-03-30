import 'package:flutter/material.dart';
import 'package:studym8/presentation/widgets/social_button/social_button.dart';

class SocialButtonsGroup extends StatelessWidget {
  const SocialButtonsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton.google(),
        const SizedBox(
          width: 24.0,
        ),
        SocialButton.apple(),
        const SizedBox(
          width: 24.0,
        ),
        SocialButton.facebook()
      ],
    );
  }
}
