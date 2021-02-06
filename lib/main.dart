import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comm/services/translation_language.dart';
import 'package:get_storage/get_storage.dart';

import './views/login_view.dart';
import 'controllers/bindings/all_controllers_bindind.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: TranslationLanguage(),
      fallbackLocale: Locale('ar'),
      locale: Get.deviceLocale,
      theme: ThemeData(primaryColor: Colors.indigo),
      initialBinding: AllControllersBinding(),
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
