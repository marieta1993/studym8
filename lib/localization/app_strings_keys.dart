import 'package:studym8/localization/app_strings.dart';

const String studym8 = 'Studym8';
const String skip = 'skip';
const String next = 'next';
const String login = 'login';
const String registerNow = 'registerNow';
const String letGetsYouInText = 'Let’s get you in';

extension StringLocalization on String {
  String get localized {
    return localizations.containsKey(this) ? localizations[this]! : this;
  }
}
