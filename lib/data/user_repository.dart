import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/shop_model.dart';

class UserRepository {
  Future<List<Product>> loadProducts() async {
    try {
      final String response = await rootBundle.loadString('assets/data/shop.json');
      final Map<String, dynamic> data = json.decode(response);

      final List<dynamic> productItems = data['page']['sections']
              .firstWhere(
                (section) => section['type'] == 'main',
                orElse: () => null,
              )?['elements']
              .firstWhere(
                (element) => element['type'] == 'products',
                orElse: () => null,
              )?['items'] ??
          [];

      return productItems.map((product) => Product.fromJson(product)).toList();
    } catch (e) {
      print('Error loading products: $e');
      return [];
    }
  }
}
