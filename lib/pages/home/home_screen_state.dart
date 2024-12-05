import '../../models/shop_model.dart';

class HomeScreenState {
  final List<Product> products;

  HomeScreenState({
    this.products = const [],
  });

  HomeScreenState copyWith({List<Product>? products}) {
    return HomeScreenState(
      products: products ?? this.products,
    );
  }
}
