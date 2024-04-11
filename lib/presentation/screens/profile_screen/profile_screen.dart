import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  void onImagePressed() {
    getImage(ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 34.0),
                    child: Text(
                      'Set up profile',
                      textAlign: TextAlign.center,
                      style: semiBold24,
                    ),
                  ),
                  // if (image != null)
                  InkWell(
                    borderRadius: BorderRadius.circular(92.0),
                    onTap: onImagePressed,
                    child: CircleAvatar(
                      radius: 92.0,
                      backgroundImage:
                          const AssetImage('resources/images/profile.png'),
                      foregroundImage:
                          image != null ? FileImage(File(image!.path)) : null,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 48.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        helperText: '*Username should contain numbers',
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/profilehomepage');
                  },
                  bgColor: primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
