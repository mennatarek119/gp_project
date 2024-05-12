import 'package:flutter/material.dart';
import 'package:gp_project/model/Respone.dart';
import 'package:gp_project/model/api_model.dart';

class CartModel extends ChangeNotifier {
  // List of items on sale
  late List<Product> _shopItems = [];

  // List of cart items
  List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  List<Product> get shopItems => _shopItems;

  void setShopItems(List<Product> products) {
    _shopItems.clear();
    _shopItems.addAll(products);
    notifyListeners();
  }

  // Fetch products from API and populate shopItems
  Future<void> fetchProductsFromApi() async {
    try {
      List<Product> products = await ApiService.getProducts();
      setShopItems(products);
    } catch (e) {
      print('Error fetching products: $e');
      // You can handle errors here, like showing a snackbar or retry option
    }
  }

  // Add item to cart
  void addItemToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += _cartItems[i].price;
    }
    return totalPrice.toStringAsFixed(2);
  }
}
