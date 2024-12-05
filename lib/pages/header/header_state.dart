class HeaderState {
  final int cartProductCount;
  final int favoriteProductCount;
  final String selectedLanguage;

  HeaderState(
      {required this.cartProductCount,
      required this.favoriteProductCount,
      required this.selectedLanguage});

  factory HeaderState.initial() {
    return HeaderState(
        cartProductCount: 0, favoriteProductCount: 0, selectedLanguage: 'en');
  }

  HeaderState copyWith({
    int? cartProductCount,
    int? favoriteProductCount,
    String? selectedLanguage,
  }) {
    return HeaderState(
      cartProductCount: cartProductCount ?? this.cartProductCount,
      favoriteProductCount: favoriteProductCount ?? this.favoriteProductCount,
      selectedLanguage: selectedLanguage ?? this.selectedLanguage,
    );
  }
}
