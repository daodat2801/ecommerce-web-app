import 'package:ecommerce_web_app/data/user_repository.dart';
import 'package:ecommerce_web_app/pages/header/header_state.dart';
import 'package:ecommerce_web_app/pages/header/header_view_model.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_state.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_state.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_viewmodel.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_state.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/team/team_screen_viewmodel.dart';
import 'package:ecommerce_web_app/services/product_detail_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../pages/product_detail/product_detail_screen_view_model.dart';
import '../pages/product_detail/product_screen_state.dart';

class ViewModelProvider {
  ViewModelProvider._();

  static final loginScreenVMProvider =
      StateNotifierProvider<LoginScreenViewModel, LoginScreenState>(
          (ref) => LoginScreenViewModel(LoginScreenState(), UserRepository()));

  static final shopScreenVMProvider =
      StateNotifierProvider<ShopScreenViewModel, ShopScreenState>((ref) {
    return ShopScreenViewModel();
  });

  static final teamScreenVMProvider =
      StateNotifierProvider<TeamScreenViewmodel, TeamState>((ref) {
    return TeamScreenViewmodel();
  });

  static final headerVMProvider =
      StateNotifierProvider<HeaderViewModel, HeaderState>((ref) {
    return HeaderViewModel();
  });

  static final productDetailViewModelProvider =
      StateNotifierProvider<ProductDetailViewModel, ProductScreenState>((ref) {
    final repository = ref.watch(productDetailRepositoryProvider);
    return ProductDetailViewModel(repository: repository);
  });

  static final pricingScreenVMProvider =
      StateNotifierProvider<PricingScreenViewmodel, PricingState>((ref) {
    return PricingScreenViewmodel();
  });
}
