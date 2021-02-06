import '../models/product_model.dart';

class FetchProducts {
  static Future<List<ProductModel>> getData() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    return [
      ProductModel(
        id: 'p1',
        title: 'Red Shirt',
        imageUrl:
            'https://fastly.4sqi.net/img/general/width960/72983181_Tpm92nLQgSNVNM1URxP_tivAReBbqtJNz4MM5dM3Pco.jpg',
        description: 'Red Shirt For Al Ahly',
        price: 200.99,
      ),
      ProductModel(
        id: 'p2',
        title: 'Black Shirt',
        imageUrl:
            'https://ih1.redbubble.net/image.2042268221.9198/ssrco,slim_fit_t_shirt,womens,101010:01c5ca27c6,front,square_product,600x600.jpg',
        description: 'Black Shirt For Al Supporters',
        price: 200.99,
      ),
      ProductModel(
        id: 'p3',
        title: 'El Qadia Momken',
        imageUrl:
            'https://ih1.redbubble.net/image.1920183790.0082/ssrco,classic_tee,mens,101010:01c5ca27c6,front_alt,square_product,600x600.jpg',
        description: 'Afsha Shirt For Al Qadia',
        price: 200.99,
      ),
      ProductModel(
        id: 'p4',
        title: 'Grey Shirt',
        imageUrl:
            'https://ih1.redbubble.net/image.1141834251.6546/ssrco,classic_tee,mens,fafafa:ca443f4786,front_alt,square_product,600x600.u1.jpg',
        description: 'Grey Shirt For Supporters',
        price: 100.2,
      ),
    ];
  }
}
