import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comm/controllers/language_controller.dart';
import 'file:///D:/projects/get_comm/lib/constants/widgets/grid_item.dart';
import 'package:get_comm/controllers/product_controller.dart';

class HomeView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProductController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home screen'.tr,
        ),
        actions: [
          GetBuilder<LanguageController>(
            init: LanguageController(),
            builder: (controller) => DropdownButton(
              underline: SizedBox(),
              iconSize: 40,
              iconEnabledColor: Colors.white,
              iconDisabledColor: Colors.white,
              items: [
                DropdownMenuItem(
                  child: Text('English'),
                  value: 'en',
                ),
                DropdownMenuItem(
                  child: Text('العربية'),
                  value: 'ar',
                ),
              ],
              //value: controller.appLocale,
              onChanged: (val) {
                controller.changeLanguage(val);
                Get.updateLocale(Locale(val));
              },
            ),
          ),
        ],
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 6 / 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => GridItem(
                    productModel: controller.products[index],
                  ),
                  itemCount: controller.products.length,
                ),
              ),
      ),
    );
  }
}
