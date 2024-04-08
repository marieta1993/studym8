import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/auth_screens/sub_widgets/login_sub_screen.dart';
import 'package:studym8/presentation/screens/auth_screens/sub_widgets/sign_up_screen.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/presentation/widgets/social_button/social_buttons_group.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({required this.isSignUpPage, super.key});
  final bool isSignUpPage;

  @override
  State<LoginScreen> createState() => _LoginScreenState(this.isSignUpPage);
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = true;
  bool isSignUpPage = true;

  _LoginScreenState(this.isSignUpPage);
  @override
  Widget build(BuildContext context) {
    void onShowPasswordPressed() {
      setState(() {
        passwordVisible = !passwordVisible;
      });
    }

    void onLoginPressed() {
      setState(() {
        isSignUpPage = !isSignUpPage;
      });
    }

    final String welcomeText = isSignUpPage ? 'Welcome' : 'Welcome Back';
    final String pageTitle = isSignUpPage ? 'or Sign up with' : 'or Login with';

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 34.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Text(
                  welcomeText,
                  textAlign: TextAlign.center,
                  style: semiBold24,
                ),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        text: 'Signup',
                        bgColor: isSignUpPage ? primaryColor : null,
                        onPressed: !isSignUpPage ? onLoginPressed : () {}),
                    const SizedBox(
                      width: 16,
                    ),
                    CustomButton(
                        text: 'Login',
                        bgColor: !isSignUpPage ? primaryColor : null,
                        onPressed: isSignUpPage ? onLoginPressed : () {}),
                  ]),

              isSignUpPage
                  ? SignUpScreen(
                      passwordVisible: passwordVisible,
                      onShowPasswordPressed: onShowPasswordPressed)
                  : LoginSubScreen(
                      passwordVisible: passwordVisible,
                      onShowPasswordPressed: onShowPasswordPressed),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        pageTitle,
                        style: mediumRoboto,
                      ),
                    ),
                    const Expanded(
                      child: Divider(),
                    )
                  ],
                ),
              ),
              const SocialButtonsGroup(),
              // Center(
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
              //     child: Column(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(bottom: 16.0),
              //           child: RichText(
              //               text: TextSpan(
              //             text: 'New to StudyM8 this?',
              //             style: courseTutorName,
              //             children: <TextSpan>[
              //               TextSpan(
              //                   text: ' Create Account',
              //                   style: courseTutorName.copyWith(
              //                       color: Colors.deepOrange,
              //                       fontWeight: FontWeight.w700))
              //             ],
              //           )),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Center(
                child:
                    // const Text('New to StudyM8 this?Create Account'),
                    Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: !isSignUpPage
                            ? RichText(
                                text: TextSpan(
                                text: 'New to StudyM8 this?',
                                style: courseTutorName,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Create Account',
                                    style: courseTutorName.copyWith(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.w700),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        setState(() {
                                          isSignUpPage = !isSignUpPage;
                                        });
                                      },
                                  )
                                ],
                              ))
                            : RichText(
                                text: TextSpan(
                                text: 'Already have an account?',
                                style: courseTutorName,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Login',
                                    style: courseTutorName.copyWith(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.w700),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        setState(() {
                                          isSignUpPage = !isSignUpPage;
                                        });
                                      },
                                  )
                                ],
                              )),
                      ),
                      isSignUpPage
                          ? buildPrivacyPolicy()
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  buildPrivacyPolicy() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'By signing into StudyM8 you agree to our ',
                style: courseTutorName,
                children: [
                  TextSpan(
                    text: 'Terms of Service',
                    style: courseTutorName.copyWith(
                        color: Colors.deepOrange, fontWeight: FontWeight.w700),
                  ),
                  const TextSpan(text: ' and ', style: courseTutorName),
                  TextSpan(
                      text: 'Privacy Policy',
                      style: courseTutorName.copyWith(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w700))
                ])),
      );
}
