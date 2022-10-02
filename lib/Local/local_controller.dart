import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../main.dart';

class MyLocalController extends GetxController {
  Locale inialang = sharepref!.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(sharepref!.getString("lang")!);
  void changeLang(String codelang) {
    Locale locale = Locale(codelang);
    sharepref!.setString("lang", codelang);
    Get.updateLocale(locale);
  }

  // Locale? getAppLanguage() {
  //   String? language = AppHelper.getAppData(key: Const.Value_lang);
  //   if (language == "ar")
  //     return Locale("ar");
  //   else if (language == "en")
  //     return Locale("en");
  //   else
  //     return Get.deviceLocale;
  // }
  //
  // void saveLang(String codelang) {
  //   Locale locale = Locale(codelang);
  //   AppHelper.saveAppData(key: Const.Value_lang, value: codelang);
  //   Get.updateLocale(locale);
  // }
}
