import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  final String name;
  final String imageUrl;
  final String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam';
  final int price;

  Product({required this.name, required this.imageUrl, required this.price});

  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => products;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(products[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

List<Product> products = [
  Product(
      name: 'طارد السحالي "الوزغ" طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Lizard Repellent',
      imageUrl: 'images/spray.jpg',
      price: 27),
  Product(
      name: 'طارد البعوض طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
      imageUrl: 'images/spray2.jpg',
      price: 25),
  Product(
      name: 'طارد النمل طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Ant Repellent',
      imageUrl: 'images/spray3.jpg',
      price: 27),
  Product(
      name: 'طارد السحالي "الوزغ" طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Lizard Repellent',
      imageUrl: 'images/spray.jpg',
      price: 27),
  Product(
      name: 'طارد البعوض طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
      imageUrl: 'images/spray2.jpg',
      price: 25),
  Product(
      name: 'طارد النمل طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Ant Repellent',
      imageUrl: 'images/spray3.jpg',
      price: 27),
];
