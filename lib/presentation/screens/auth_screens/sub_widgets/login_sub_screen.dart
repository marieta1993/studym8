import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/profile_screen/profile_screen.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/presentation/widgets/social_button/social_buttons_group.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class LoginSubScreen extends StatelessWidget {
  final bool passwordVisible;
  final onShowPasswordPressed;
  const LoginSubScreen(
      {required this.passwordVisible,
      required this.onShowPasswordPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 34.0),
              child: Text(
                'Please login to your account',
                style: regular16,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: 'johndoe@gmail.com',
                      labelText: 'Email Address',
                      labelStyle: courseTutorName),
                ),
                TextField(
                  obscureText: passwordVisible,
                  obscuringCharacter: '.',
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: courseTutorName,
                      hintText: 'Jo123*&00gts',
                      helperText:
                          '* Password should contain at least 8 characters: 1 lowercase, 1 digit and or a symbol, and 1 uppercase character',
                      helperMaxLines: 3,
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: onShowPasswordPressed,
                          icon: Icon(passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.deepOrange),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 34.0),
                  child: CustomButton(
                    text: 'Login',
                    bgColor: primaryColor,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const ProfileScreen();
                      }));
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
