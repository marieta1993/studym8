import 'package:flutter/material.dart';
import 'package:studym8/model/enum/social.dart';

class SocialButton extends StatelessWidget {
  SocialButton._({required this.data});

  SocialButton.custom({
    super.key,
    required this.data,
    this.onPressed,
  });

  SocialButton.facebook({super.key}) {
    data = Social.facebook;
  }

  SocialButton.google({super.key}) {
    data = Social.google;
  }

  SocialButton.apple({super.key}) {
    data = Social.apple;
  }

  Social? data;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        constraints: const BoxConstraints(minWidth: 90.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Image.asset(
              data!.iconImg,
              width: 20.0,
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                data?.title ?? "",
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
