import 'package:get/get.dart';
import 'package:get_comm/controllers/product_controller.dart';
import 'package:get_comm/controllers/register_controller.dart';

class AllControllersBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => ProductController());
  }

}