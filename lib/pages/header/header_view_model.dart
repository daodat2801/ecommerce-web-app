import 'package:ecommerce_web_app/pages/header/header_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeaderViewModel extends StateNotifier<HeaderState> {
  HeaderViewModel() : super(HeaderState.initial());

  void increaseCartProduct() {
    int newValue = state.cartProductCount + 1;
    state = state.copyWith(cartProductCount: newValue);
  }

  void increaseFavoriteProduct() {
    int newValue = state.favoriteProductCount + 1;
    state = state.copyWith(favoriteProductCount: newValue);
  }

  void resetState() {
    state = state.copyWith(cartProductCount: 0, favoriteProductCount: 0);
  }

  int getCardProductCount() {
    return state.cartProductCount;
  }

  int getFavoriteProductCount() {
    return state.favoriteProductCount;
  }

  void updateSelectedLanguage(String languageCode) {
    state = state.copyWith(selectedLanguage: languageCode);
  }

  String getSelectedLanguage() {
    return state.selectedLanguage;
  }
}
