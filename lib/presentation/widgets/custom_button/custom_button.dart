import 'package:flutter/material.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/buttons_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final Color? bgColor;
  const CustomButton(
      {required this.text,
      this.onPressed,
      this.buttonStyle,
      this.bgColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          shape: buttonShape,
          backgroundColor: bgColor ?? Colors.white),
      child: Text(
        text,
        style: TextStyle(color: bgColor != null ? Colors.white : primaryColor),
      ),
    );
  }
}
