import 'package:get/get.dart';

class MyLocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "English": "الانجليزية",
          "Arabic": "العربية",
          "Language": "اللغة",
          "Do you want to change language": "هل تريد تغيير اللغة ؟",
          "Default Language": "اللغة الافتراضية ",
          "HomePage": "الصفحة الرئيسة",
          "Screen one": "الشاشة الاولى ",
          "Screen two": " الشاشة الثانية"
        },
        "en": {
          "English": "English",
          "Arabic": "Arabic",
          "Language": "Language",
          "Do you want to change language": "Do you want to change language?",
          "Default Language": "Default Language",
          "HomePage": "HomePage",
          "Screen one": "Screen one",
          "Screen two": "Screen two"
        }
      };
}
