import 'package:ecommerce_web_app/data/product_repository.dart';
import 'package:ecommerce_web_app/data/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/shop_model.dart';

class ShopScreenViewModel extends StateNotifier<ShopState> {
  final ProductRepository _repository = ProductRepository();

  ShopScreenViewModel() : super(ShopState.initial()) {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final products = await _repository.loadProducts();
    state = ShopState(products: products);
  }
}


class ShopState {
  final List<Product> products;

  ShopState({required this.products});

  factory ShopState.initial() {
    return ShopState(products: []);
  }
}
