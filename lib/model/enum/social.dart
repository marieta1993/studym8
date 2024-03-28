enum Social {
  facebook('Facebook', 'resources/images/fb.png'),
  google('Google', 'resources/images/gmail.png'),
  apple('Apple', 'resources/images/apple.png');

  final String title;
  final String iconImg;

  const Social(this.title, this.iconImg);
}
