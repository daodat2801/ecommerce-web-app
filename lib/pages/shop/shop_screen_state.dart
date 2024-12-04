import '../../models/shop_model.dart';

class ShopScreenState {
  final List<Product> products;

  ShopScreenState({
    required this.products,
  });

  factory ShopScreenState.initial() {
    return ShopScreenState(products: []);
  }

  ShopScreenState copyWith({List<Product>? products}) {
    return ShopScreenState(
      products: products ?? this.products,
    );
  }
}
