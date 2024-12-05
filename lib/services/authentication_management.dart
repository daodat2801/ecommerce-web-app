import 'dart:async';

import 'package:ecommerce_web_app/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authenManagerProvider =
    StateNotifierProvider<AuthenticationManagement, AuthenState>(
        (ref) => AuthenticationManagement(AuthenState()));

class AuthenticationManagement extends StateNotifier<AuthenState> {
  AuthenticationManagement(super.state);

  Future<bool> authenLogin(User user) async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(UserKeys.userName)) {
      await saveMockAccount();
    }

    if (user.userName.hashCode == prefs.getInt(UserKeys.userName) &&
        user.passWord.hashCode == prefs.getInt(UserKeys.passWord)) {
      state = AuthenState(user: user);
      startSession("token");
      return true;
    } else {
      return false;
    }
  }

  Future<void> saveMockAccount() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(UserKeys.userName, "username".hashCode);
    prefs.setInt(UserKeys.passWord, "password".hashCode);
  }

  void startSession(String token) {
    state.sessionTimer?.cancel();
    state.sessionTimer = Timer(const Duration(seconds: 10), closeSession);
  }

  void closeSession() {
    state = AuthenState();
  }
}

class AuthenState {
  Timer? sessionTimer;
  String? sessionToken;
  User? user;

  AuthenState({this.sessionTimer, this.sessionToken, this.user});

  AuthenState copyWith({
    Timer? sessionTimer,
    String? sessionToken,
    User? user,
  }) {
    return AuthenState(
        sessionTimer: sessionTimer ?? this.sessionTimer,
        sessionToken: sessionToken ?? this.sessionToken,
        user: user ?? this.user);
  }
}
