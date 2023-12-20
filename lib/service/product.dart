import 'dart:convert';

import 'package:herbal_app/model/products.dart';
import 'package:http/http.dart' as http;

class ProductsService {
  Future<List<Product>> getData() async {
    List<Product> datam = [];
    try {
      final response = await http.get(
        Uri.parse('https://my-json-server.typicode.com/arzukara/MyJson/db'),
      );

      if (response.statusCode == 200) {
        final item = json.decode(response.body);
        String jsonString = json.encode(item);
        Products data = productsFromJson(jsonString);
        datam = data.products;
      } else {
        print('Error Occurred');
      }
    } catch (e) {
      print('Error Occurred' + e.toString());
    }
    return datam;
  }
}
