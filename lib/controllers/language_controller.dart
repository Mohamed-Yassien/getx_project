import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_comm/constants/langs/locale_storage.dart';

class LanguageController extends GetxController {
  var appLocale = 'ar';

  @override
  void onInit() async {
    LocaleStorage localeStorage = LocaleStorage();
    appLocale = await localeStorage.getData ?? 'ar';
    update();
    Get.updateLocale(Locale(appLocale));
    super.onInit();
  }

  changeLanguage(String type) {
    if (appLocale == type) {
      return;
    } else {
      appLocale = type;
    }
    LocaleStorage().saveData(type);
    update();
  }
}
