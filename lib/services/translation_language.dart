import 'package:get/get.dart';
import 'package:get_comm/constants/langs/ar.dart';
import 'package:get_comm/constants/langs/en.dart';

class TranslationLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
