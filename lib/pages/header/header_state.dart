class HeaderState {
  final int cartProductCount;
  final int favoriteProductCount;

  HeaderState(
      {required this.cartProductCount, required this.favoriteProductCount});

  factory HeaderState.initial() {
    return HeaderState(cartProductCount: 0, favoriteProductCount: 0);
  }

  HeaderState copyWith({int? cartProductCount, int? favoriteProductCount}) {
    return HeaderState(
        cartProductCount: cartProductCount ?? this.cartProductCount,
        favoriteProductCount:
            favoriteProductCount ?? this.favoriteProductCount);
  }
}
