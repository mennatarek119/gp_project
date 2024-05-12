import 'dart:convert';
import 'package:gp_project/model/api_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl =
      "https://fakestoreapi.com/products/category/women's clothing";

  static Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return List<Product>.from(list.map((model) => Product.fromJson(model)));
    } else {
      throw Exception('Failed to load products');
    }
  }
}
