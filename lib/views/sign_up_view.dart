import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/widgets/reusable_text_field.dart';
import '../controllers/register_controller.dart';
import './home_view.dart';

class SignUpView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var emailController = TextEditingController();

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
                  'sign-screen'.tr,
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
                  secure: false,
                  label: 'email'.tr,
                  controller: emailController,
                ),
                SizedBox(
                  height: 15,
                ),
                ReusableTextField(
                  secure: true,
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
                      final res = await controller.creteUser(
                        password: passwordController.text,
                        email: emailController.text,
                      );
                      if (res != null)
                        Get.offAll(
                          HomeView(),
                          transition: Transition.downToUp,
                          duration: Duration(seconds: 1),
                        );
                    },
                    textColor: Colors.white,
                    color: Colors.indigo,
                    child: controller.isLoading.value
                        ? CircularProgressIndicator()
                        : Text(
                            'sign up'.tr,
                          ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'already have account'.tr,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'login'.tr,
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
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
