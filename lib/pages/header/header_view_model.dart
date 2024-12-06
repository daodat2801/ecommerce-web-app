import 'package:ecommerce_web_app/commons/constants/app_string.dart';
import 'package:ecommerce_web_app/pages/header/header_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeaderViewModel extends StateNotifier<HeaderState> {
  HeaderViewModel() : super(HeaderState.initial()) {
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString(AppString.selectedLanguage) ?? 'en';
    state = state.copyWith(selectedLanguage: savedLanguage);
  }

  Future<void> updateSelectedLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppString.selectedLanguage, languageCode);
    state = state.copyWith(selectedLanguage: languageCode);
  }

  String getSelectedLanguage() {
    return state.selectedLanguage;
  }

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
}
