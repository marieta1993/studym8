enum PaymentMethod {
  paypal('Paypal', 'resources/images/paypal.png', true),
  googlePay('Google Pay', 'resources/images/google_pay.png', false),
  applePay('Apple Pay', 'resources/images/apple_pay.png', false),
  masterCard('Master Card', 'resources/images/master_card.png', false);

  final String title;
  final String iconImg;
  final bool isChecked;

  const PaymentMethod(this.title, this.iconImg, this.isChecked);
}
