import 'package:ecommerce_web_app/data/user_repository.dart';
import 'package:ecommerce_web_app/models/faq.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_state.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_state.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_viewmodel.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_state.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/team/team_screen_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  static final faqScreenVMProvider =
      StateNotifierProvider<ListFAQs, FAQState>((ref) {
    return ListFAQs();
  });
  static final pricingProvider =
      StateNotifierProvider<PricingStateNotifier, bool>((ref) {
    return PricingStateNotifier();
  });
  static final planScreenVMProvider =
      StateNotifierProvider<ListPlans, PlanState>((ref) {
    return ListPlans();
  });
}
