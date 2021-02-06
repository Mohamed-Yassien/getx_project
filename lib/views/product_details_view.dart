import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comm/controllers/product_controller.dart';

class ProductDetailsView extends StatelessWidget {
  final String id;

  ProductDetailsView(this.id);

  @override
  Widget build(BuildContext context) {
    final product = Get.find<ProductController>().findProductById(id);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.title,
        ),
      ),
      body: Column(
        children: [
          Image.network(
            product.imageUrl,
            height: height * .3,
            width: width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            product.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
