import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/resources/colors/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Welcome'),
            Row(children: [
              CustomButton(
                text: 'Signup',
                bgColor: primaryColor,
                onPressed: () {},
              ),
              CustomButton(text: 'Login', onPressed: () {}),
            ]),
            Text(
              'Please register for an account ',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(),
                TextField(),
                Text(
                    "*Password should contain at least 8 characters: 1 lowercase, 1 digit and or a symbol, and 1 uppercase character"),
                CustomButton(
                  text: 'Signup',
                  bgColor: primaryColor,
                  onPressed: () {},
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: Divider()),
                Text('or Sign up with'),
                Expanded(
                  child: Divider(),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
