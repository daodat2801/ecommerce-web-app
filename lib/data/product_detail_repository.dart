import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product_detail_model.dart';

class ProductDetailRepository {
  final String filePath = 'assets/data/product.json';

  Future<Map<String, dynamic>> loadJsonFromAsset() async {
    try {
      final String jsonString = await rootBundle.loadString(filePath);
      return jsonDecode(jsonString);
    } catch (e) {
      throw Exception("Error loading JSON from asset: $e");
    }
  }

  Future<ProductDetail> fetchProductDetail() async {
    try {
      final Map<String, dynamic> jsonData = await loadJsonFromAsset();

      final List<dynamic> sections = jsonData['page']['sections'] ?? [];
      final Map<String, dynamic>? mainSection = sections.firstWhere(
            (section) => section['type'] == 'main',
        orElse: () => null,
      );

      if (mainSection == null) {
        throw Exception("Main section not found");
      }

      final List<dynamic> elements = mainSection['elements'] ?? [];
      final Map<String, dynamic>? productElement = elements.firstWhere(
            (element) => element['type'] == 'product',
        orElse: () => null,
      );

      if (productElement == null) {
        throw Exception("Product detail not found");
      }

      return ProductDetail.fromJson(productElement);
    } catch (e) {
      throw Exception("Error fetching product detail: $e");
    }
  }


  Future<List<BestSellerProduct>> fetchBestsellerProducts() async {
    try {
      final Map<String, dynamic> jsonData = await loadJsonFromAsset();

      final List<dynamic> sections = jsonData['page']['sections'] ?? [];
      final Map<String, dynamic>? mainSection = sections.firstWhere(
            (section) => section['type'] == 'main',
        orElse: () => null,
      );

      if (mainSection == null) {
        throw Exception("Main section not found");
      }

      final List<dynamic> elements = mainSection['elements'] ?? [];
      final Map<String, dynamic>? bestsellerElement = elements.firstWhere(
            (element) => element['type'] == 'bestseller_products',
        orElse: () => null,
      );

      if (bestsellerElement == null) {
        throw Exception("Bestseller products not found");
      }

      final List<dynamic> products = bestsellerElement['products'] ?? [];
      return products.map((product) => BestSellerProduct.fromJson(product)).toList();
    } catch (e) {
      throw Exception("Error fetching bestseller products: $e");
    }
  }

}
