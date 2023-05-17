import 'package:get/get.dart';
import 'package:online_shopee/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        productName: "FirstProd",
        productImage: 'abd',
        productDescription: 'In publishing and graphic',
        price: 30,
      ),
      Product(
        id: 2,
        productName: "SecondProd",
        productImage: 'abd',
        productDescription: 'In publishing and graphic',
        price: 30,
      ),
      Product(
        id: 3,
        productName: "ThirdProd",
        productImage: 'abd',
        productDescription: 'In publishing and graphic ',
        price: 30,
      ),
    ];
    products.value = productResult;
  }
}
