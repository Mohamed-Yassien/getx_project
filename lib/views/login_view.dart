import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './sign_up_view.dart';
import '../constants/widgets/reusable_text_field.dart';
import '../controllers/register_controller.dart';
import './home_view.dart';

class LoginView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 250,
              horizontal: 25,
            ),
            child: Column(
              children: [
                Text(
                  'login-screen'.tr,
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ReusableTextField(
                  label: 'email'.tr,
                  controller: emailController,
                ),
                SizedBox(
                  height: 15,
                ),
                ReusableTextField(
                  label: 'password'.tr,
                  controller: passwordController,
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    onPressed: () async {
                      final res =  await controller.loginUser(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      if(res != null)
                       Get.offAll(
                        HomeView(),
                        transition: Transition.downToUp,
                        duration: Duration(seconds: 1),
                      );
                    },
                    textColor: Colors.white,
                    color: Colors.indigo,
                    child: controller.isLoading.value ? CircularProgressIndicator() : Text(
                      'login'.tr,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      SignUpView(),
                      transition: Transition.zoom,
                      duration: Duration(seconds: 1),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'do not have account'.tr,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'sign up'.tr,
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
