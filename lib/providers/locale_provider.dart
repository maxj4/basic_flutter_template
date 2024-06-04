import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  // This can be modified to take a parameter to set the locale to support multiple locales
  void toggleLocale() {
    _locale =
        _locale == const Locale('en') ? const Locale('de') : const Locale('en');
    notifyListeners();
  }
}
