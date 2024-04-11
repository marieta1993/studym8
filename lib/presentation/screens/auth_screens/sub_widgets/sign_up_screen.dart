import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/auth_screens/login_screen/login_screen.dart';
import 'package:studym8/presentation/screens/profile_screen/profile_screen.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/presentation/widgets/social_button/social_buttons_group.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class SignUpScreen extends StatelessWidget {
  final bool passwordVisible;
  final onShowPasswordPressed;
  const SignUpScreen(
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
                'Please register for an account ',
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
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 34.0),
                  child: CustomButton(
                    text: 'Signup',
                    bgColor: primaryColor,
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  ),
                )
              ],
            ),
          ],
        ),

        // Center(
        //   child:
        //       // const Text('New to StudyM8 this?Create Account'),
        //       Padding(
        //     padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(bottom: 16.0),
        //           child: RichText(
        //               text: TextSpan(
        //             text: 'Already have an account?',
        //             style: courseTutorName,
        //             children: <TextSpan>[
        //               TextSpan(
        //                 text: ' Login',
        //                 style: courseTutorName.copyWith(
        //                     color: Colors.deepOrange,
        //                     fontWeight: FontWeight.w700),
        //                 recognizer: TapGestureRecognizer()..onTap = () {},
        //               )
        //             ],
        //           )),
        //         ),
        //         RichText(
        //             textAlign: TextAlign.center,
        //             text: const TextSpan(
        //               text: 'By signing into StudyM8 you agree to our ',
        //               style: courseTutorName,
        //             )),
        //         RichText(
        //             textAlign: TextAlign.center,
        //             text: TextSpan(
        //               children: <TextSpan>[
        //                 TextSpan(
        //                   text: 'Terms of Service',
        //                   style: courseTutorName.copyWith(
        //                       color: Colors.deepOrange,
        //                       fontWeight: FontWeight.w700),
        //                 ),
        //                 const TextSpan(text: ' and ', style: courseTutorName),
        //                 TextSpan(
        //                     text: 'Privacy Policy',
        //                     style: courseTutorName.copyWith(
        //                         color: Colors.deepOrange,
        //                         fontWeight: FontWeight.w700))
        //               ],
        //             )),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
