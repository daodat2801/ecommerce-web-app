import 'package:ecommerce_web_app/models/fetch_data_state.dart';
import 'package:ecommerce_web_app/models/product_detail_model.dart';

class ProductScreenState {
  final FetchDataState<ProductDetail> fetchProductDetail;
  final FetchDataState<List<BestSellerProduct>> fetchBestSellerProducts;

  ProductScreenState({
    required this.fetchProductDetail,
    required this.fetchBestSellerProducts,
  });

  factory ProductScreenState.initial() {
    return ProductScreenState(
      fetchProductDetail: const Loading(),
      fetchBestSellerProducts: const Loading(),
    );
  }

  ProductScreenState copyWith({
    FetchDataState<ProductDetail>? fetchProductDetail,
    FetchDataState<List<BestSellerProduct>>? fetchBestSellerProducts,
  }) {
    return ProductScreenState(
      fetchProductDetail: fetchProductDetail ?? this.fetchProductDetail,
      fetchBestSellerProducts:
          fetchBestSellerProducts ?? this.fetchBestSellerProducts,
    );
  }
}
