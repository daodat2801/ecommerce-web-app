import 'package:ecommerce_web_app/pages/header/header_state.dart';
import 'package:ecommerce_web_app/pages/header/header_view_model.dart';
import 'package:ecommerce_web_app/pages/home/home_screen_state.dart';
import 'package:ecommerce_web_app/pages/home/home_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_state.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_viewmodel.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_state.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/team/team_screen_viewmodel.dart';
import 'package:ecommerce_web_app/services/repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../pages/product_detail/product_detail_screen_view_model.dart';
import '../pages/product_detail/product_screen_state.dart';

class ViewModelProvider {
  ViewModelProvider._();
  static final shopScreenVMProvider =
      StateNotifierProvider<ShopScreenViewModel, ShopScreenState>((ref) {
    return ShopScreenViewModel(
        repository: ref.read(RepositoryProvider.productRepositoryProvider));
  });

  static final teamScreenVMProvider =
      StateNotifierProvider<TeamScreenViewmodel, TeamState>((ref) {
    return TeamScreenViewmodel(
        repository: ref.read(RepositoryProvider.teamMemberRepositoryProvider));
  });

  static final headerVMProvider =
      StateNotifierProvider<HeaderViewModel, HeaderState>((ref) {
    return HeaderViewModel();
  });

  static final productDetailViewModelProvider =
      StateNotifierProvider<ProductDetailViewModel, ProductScreenState>((ref) {
    return ProductDetailViewModel(
        repository:
            ref.read(RepositoryProvider.productDetailRepositoryProvider));
  });

  static final pricingScreenVMProvider =
      StateNotifierProvider<PricingScreenViewmodel, PricingState>((ref) {
    return PricingScreenViewmodel();
  });

  static final homeScreenVMProvider =
      StateNotifierProvider<HomeScreenViewModel, HomeScreenState>((ref) {
    return HomeScreenViewModel(HomeScreenState(),
        repository: ref.read(RepositoryProvider.productRepositoryProvider));
  });
}
