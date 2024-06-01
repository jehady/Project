import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../serveses/serveses.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServeses myServeses = Get.find();
  changelan(String langcode) {
    Locale locale = Locale(langcode);
    myServeses.sharedPreferences.setString("lang", langcode);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServeses.sharedPreferences.getString("lan");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
