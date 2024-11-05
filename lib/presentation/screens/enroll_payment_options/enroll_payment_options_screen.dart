import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:studym8/model/enum/payment_method.dart';
import 'package:studym8/presentation/screens/enroll_payment_options/enroll_payment_pin_screen.dart';
import 'package:studym8/presentation/widgets/custom_button/custom_button.dart';
import 'package:studym8/resources/colors/colors.dart';
import 'package:studym8/resources/theme/text_styles.dart';

class EnrollPaymentOptionsScreen extends StatefulWidget {
  const EnrollPaymentOptionsScreen({super.key});

  @override
  State<EnrollPaymentOptionsScreen> createState() =>
      _EnrollPaymentOptionsScreenState();
}

class _EnrollPaymentOptionsScreenState
    extends State<EnrollPaymentOptionsScreen> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Enroll Course',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 34.0, bottom: 39.0),
                  child: Text(
                    'Please select a payment method',
                    textAlign: TextAlign.start,
                    style: courseTutorName,
                  ),
                ),
                for (var e in PaymentMethod.values)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: RadioListTile(
                      title: Text(e.title),
                      secondary: Image.asset(e.iconImg),
                      value: e.index,
                      groupValue: _selectedValue,
                      controlAffinity: ListTileControlAffinity.trailing,
                      tileColor: Color.fromRGBO(238, 237, 237, 1),
                      onChanged: (value) {
                        setState(() {
                          _selectedValue =
                              value!; // Update _selectedValue when option 2 is selected
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: CustomButton(
                text: 'Enroll Now - \$50',
                bgColor: primaryColor,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return FilledRoundedPinPut();
                  }));
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
