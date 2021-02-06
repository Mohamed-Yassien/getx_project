import 'package:get/get.dart';
import 'package:get_comm/services/fetch_products.dart';

import '../models/product_model.dart';

class ProductController extends GetxController {
  var products = List<ProductModel>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      isLoading(true);
      var productsList = await FetchProducts.getData();
      products.assignAll(productsList);
    } finally {
      isLoading(false);
    }
  }

  ProductModel findProductById(String id) {
    return products.firstWhere((element) => element.id == id);
  }
}
