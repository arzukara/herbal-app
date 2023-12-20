import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/service/product.dart';
import 'package:provider/provider.dart';

class ProductProvider with ChangeNotifier {
  static ProductProvider get instance =>
      Provider.of<ProductProvider>(Get.context!, listen: false);

  ProductsService productsService = ProductsService();

  List<Product> productsList = [];
  bool isProductsLoaded = false;
  bool isProductsLoading = false;

  Future getProducts({bool reset = false}) async {
    isProductsLoading = true;
    notifyListeners();

    if (!isProductsLoaded || reset) {
      var wrp = await productsService.getData();
      productsList = wrp ?? <Product>[];
      isProductsLoaded = true;
    }

    isProductsLoading = false;
    notifyListeners();
  }
}
