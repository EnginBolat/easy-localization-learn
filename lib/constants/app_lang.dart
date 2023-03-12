import 'package:flutter/material.dart';

class AppLang {
  static const tr = Locale("tr", "TR");
  static const de = Locale("de", "DE");
  static const ar = Locale("ar", "SA");
  static const en = Locale("en", "US");

  static const List<Locale> supportedLocale = [
    AppLang.en,
    AppLang.tr,
    AppLang.de,
    AppLang.ar
  ];

  static const List<String> supportedLanguages = [
    "English",
    "Türkçe",
    "German",
    "Arabic"
  ];

  static const localePath = "lib/assets/l10n/";
}
