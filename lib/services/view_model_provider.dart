import 'package:ecommerce_web_app/data/user_repository.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_state.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewModelProvider {
  static final loginScreenVMProvider =
      StateNotifierProvider<LoginScreenViewModel, LoginScreenState>(
          (ref) => LoginScreenViewModel(LoginScreenState(), UserRepository()));
}
