import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<String> items = [];
  Map<String, double> itemPrices = {};

  double get totalPrice =>
      itemPrices.values.fold(0, (previous, current) => previous + current);

  void addItem(String item, double price) {
    items.add(item);
    itemPrices[item] = price;
    notifyListeners();
  }

  double getItemPrice(String item) {
    return itemPrices[item] ?? 0.0;
  }

  void removeItem(String item) {
    items.remove(item);
    itemPrices.remove(item);
    notifyListeners();
  }
}
