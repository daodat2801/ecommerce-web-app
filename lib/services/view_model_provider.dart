import 'package:ecommerce_web_app/data/user_repository.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_state.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_state.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen_view_model.dart';
import 'package:ecommerce_web_app/pages/team/team_screen_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewModelProvider {
  static final loginScreenVMProvider =
      StateNotifierProvider<LoginScreenViewModel, LoginScreenState>(
          (ref) => LoginScreenViewModel(LoginScreenState(), UserRepository()));

  static final shopScreenVMProvider =
      StateNotifierProvider<ShopScreenViewModel, ShopState>((ref) {
    return ShopScreenViewModel();
  });
  static final teamScreenVMProvider =
      StateNotifierProvider<TeamScreenViewmodel, TeamState>((ref) {
    return TeamScreenViewmodel();
  });
}
