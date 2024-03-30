import 'package:flutter/material.dart';
import 'package:studym8/presentation/screens/auth_screens/sub_widgets/login_sub_screen.dart';
import 'package:studym8/presentation/screens/auth_screens/sub_widgets/sign_up_screen.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/presentation/widgets/social_button/social_buttons_group.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = true;
  bool isSignUpPage = true;
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
                padding: EdgeInsets.only(bottom: 32.0),
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
                      onShowPasswordPressed: onShowPasswordPressed)
            ],
          ),
        ),
      ),
    ));
  }
}
