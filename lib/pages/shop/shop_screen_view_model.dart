import 'package:ecommerce_web_app/data/product_repository.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopScreenViewModel extends StateNotifier<ShopScreenState> {
  final ProductRepository _repository = ProductRepository();

  ShopScreenViewModel() : super(ShopScreenState.initial()) {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      await Future.delayed(const Duration(seconds: 4));
      final products = await _repository.loadProducts();
      state = state.copyWith(
        products: products,
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
