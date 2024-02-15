import 'package:demo2/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<ProductModel> list = <ProductModel>[].obs;
  void addCart(ProductModel productModel) {
    list.add(productModel);
    update();
  }

  void deleteCart(ProductModel productModel) {
    list.remove(productModel);
    update();
  }
}
