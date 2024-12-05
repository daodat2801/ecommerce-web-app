import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/product_detail_repository.dart';

final productDetailRepositoryProvider = Provider<ProductDetailRepository>((ref) {
  return ProductDetailRepository();
});
