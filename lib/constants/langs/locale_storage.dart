import 'package:get_storage/get_storage.dart';

class LocaleStorage{

  void saveData(String _currentLang) async{
    await GetStorage().write('lang', _currentLang);
  }

  Future<String> get getData async{
    return await GetStorage().read('lang');
  }

}