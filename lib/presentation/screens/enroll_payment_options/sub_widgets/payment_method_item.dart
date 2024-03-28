import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentMethodItem extends StatelessWidget {
  final String text;
  final String image;
  final bool isChecked;

  const PaymentMethodItem(
      {required this.text,
      required this.image,
      required this.isChecked,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Color.fromRGBO(238, 237, 237, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            image,
            repeat: ImageRepeat.noRepeat,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.start,
            ),
          ),
          Icon(isChecked ? Icons.radio_button_on : Icons.radio_button_off)
        ],
      ),
    );
  }
}
