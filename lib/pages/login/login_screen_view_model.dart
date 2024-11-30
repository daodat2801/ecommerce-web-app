import 'package:ecommerce_web_app/data/user_repository.dart';
import 'package:ecommerce_web_app/pages/login/login_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreenViewModel extends StateNotifier<LoginScreenState> {
  LoginScreenViewModel(super.state, UserRepository repository);
}
