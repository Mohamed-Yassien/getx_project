import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_comm/models/product_model.dart';
import '../../views/product_details_view.dart';

class GridItem extends StatelessWidget {
  final ProductModel productModel;

  GridItem({
    @required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          ProductDetailsView(productModel.id),
          transition: Transition.leftToRightWithFade,
          duration: Duration(seconds: 1),
        );
      },
      child: GridTile(
        child: Image.network(
          productModel.imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Text(
            productModel.title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          title: Text(
            '\$${productModel.price}',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
