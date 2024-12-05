import 'package:ecommerce_web_app/data/product_repository.dart';
import 'package:ecommerce_web_app/pages/home/home_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenViewModel extends StateNotifier<HomeScreenState> {
  final ProductRepository _repository;

  HomeScreenViewModel(HomeScreenState homeScreenState,
      {required ProductRepository repository})
      : _repository = repository,
        super(HomeScreenState()) {
    fetchBestSellProducts();
  }

  Future<void> fetchBestSellProducts() async {
    try {
      await Future.delayed(const Duration(seconds: 7));
      final products = await _repository.loadProducts();
      state = state.copyWith(
        products:
            products.length > 8 ? products.getRange(0, 8).toList() : products,
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
