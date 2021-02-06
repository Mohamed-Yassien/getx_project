import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> user = Rx<User>();
  var isLoading = false.obs;

  @override
  void onInit() {
    user.bindStream(_auth.authStateChanges());
    super.onInit();
  }

   Future<UserCredential>creteUser({String password, String email}) async {
    try {
      isLoading(true);
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      isLoading(false);
      Get.showSnackbar(
        GetBar(
          title: 'Error',
          message: e.message,
          duration: Duration(seconds: 1),
        ),
      );
    }finally{
      isLoading(false);
    }
  }

   Future<UserCredential> loginUser({String email , String password}) async{
    try {
      isLoading(true);
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      isLoading(false);
      Get.showSnackbar(
        GetBar(
          title: 'Error',
          message: e.message,
          duration: Duration(seconds: 1),
        ),
      );
    }finally{
      isLoading(false);
    }
  }
}
