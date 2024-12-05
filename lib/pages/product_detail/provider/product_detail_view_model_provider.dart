import 'package:ecommerce_web_app/pages/product_detail/provider/product_detail_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../product_detail_screen_view_model.dart';
import '../product_screen_state.dart';

final productDetailViewModelProvider =
    StateNotifierProvider<ProductDetailViewModel, ProductScreenState>((ref) {
  final repository = ref.watch(productDetailRepositoryProvider);
  return ProductDetailViewModel(repository: repository);
});
