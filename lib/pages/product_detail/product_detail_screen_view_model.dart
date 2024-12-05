import 'package:ecommerce_web_app/pages/product_detail/product_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/product_detail_repository.dart';
import '../../models/fetch_data_state.dart';

class ProductDetailViewModel extends StateNotifier<ProductScreenState> {
  final ProductDetailRepository _repository;

  ProductDetailViewModel({required ProductDetailRepository repository})
      : _repository = repository,
        super(ProductScreenState.initial()) {
    fetchProductDetail();
    fetchBestSellerProducts();
  }

  Future<void> fetchProductDetail() async {
    state = state.copyWith(fetchProductDetail: const Loading());
    try {
      final productDetail = await _repository.fetchProductDetail();
      state = state.copyWith(fetchProductDetail: Success(productDetail));
    } catch (e) {
      state = state.copyWith(fetchProductDetail: Failure(e.toString()));
    }
  }

  Future<void> fetchBestSellerProducts() async {
    state = state.copyWith(fetchBestSellerProducts: const Loading());
    try {
      final bestSellerProducts = await _repository.fetchBestsellerProducts();
      state = state.copyWith(fetchBestSellerProducts: Success(bestSellerProducts));
    } catch (e) {
      state = state.copyWith(fetchBestSellerProducts: Failure(e.toString()));
    }
  }
}
