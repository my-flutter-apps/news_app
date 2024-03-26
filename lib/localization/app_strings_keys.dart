import 'package:news_app/localization/app_strings.dart';

const String papary = "papary";

extension StringLocalization on String {
  String get localized {
    return localizations.containsKey(this) ? localizations[this]! : this;
  }
}