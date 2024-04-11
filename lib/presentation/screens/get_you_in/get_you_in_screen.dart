import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studym8/localization/app_strings_keys.dart';
import 'package:studym8/presentation/screens/all_courses_screen/all_courses_main_screen.dart';
import 'package:studym8/presentation/screens/all_courses_screen/course_individual_screen.dart';
import 'package:studym8/presentation/screens/auth_screens/login_screen/login_screen.dart';
import 'package:studym8/presentation/widgets/social_button/social_button.dart';
import 'package:studym8/presentation/widgets/social_button/social_buttons_group.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/images/images.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class GetYouIn extends StatelessWidget {
  const GetYouIn({super.key});

  @override
  Widget build(BuildContext context) {
    void onCourseViewButtonPressed() {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return const AllCoursesMainScreen();
        // return const AllCoursesScreen();
      }));
    }

    onSignInButtonPressed({bool isSignup = true}) {
      isSignup
          ? Navigator.pushNamed(context, '/signup')
          : Navigator.pushNamed(context, '/login');
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Image.asset(letsGetYouInImage)),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Text(letGetsYouInText, style: letGetsYouInTitle),
                    ),
                    SocialButtonsGroup(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'Or',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 0,
                      child: ElevatedButton(
                        onPressed: onSignInButtonPressed,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        child: const Text(
                          'Sign in with password',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              height: 18.0 / 16.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      flex: 0,
                      child: ElevatedButton(
                        onPressed: onCourseViewButtonPressed,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        child: const Text(
                          'Course View',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              height: 18.0 / 16.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(
                        child:
                            // const Text('New to StudyM8 this?Create Account'),
                            RichText(
                                text: TextSpan(
                          text: 'New to StudyM8 this?',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Create Account',
                              style: const TextStyle(
                                  color: Colors.deepOrange, fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  onSignInButtonPressed(isSignup: false);
                                },
                            )
                          ],
                        )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
