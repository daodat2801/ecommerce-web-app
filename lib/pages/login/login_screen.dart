import 'package:ecommerce_web_app/commons/constants/route_path.dart';
import 'package:ecommerce_web_app/commons/utils/app_alerts.dart';
import 'package:ecommerce_web_app/commons/widgets/common_text_field.dart';
import 'package:ecommerce_web_app/models/user.dart';
import 'package:ecommerce_web_app/services/authentication_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final userNameTextController = TextEditingController();
  final passWordTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 540,
          height: 502,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF252B42),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Let's build something great",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF737373),
                ),
              ),
              const SizedBox(height: 30),
              CommonTextField(
                title: "E-mail or phone number",
                hintText: "Enter your email or phone number",
                controller: userNameTextController,
              ),
              const SizedBox(height: 20),
              CommonTextField(
                title: "Password",
                hintText: "Enter your password",
                obscureText: true,
                controller: passWordTextController,
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  color: Color(0xFF949CA9),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  _doLogin(context, ref);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2F93F6),
                  minimumSize: const Size.fromHeight(52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF009EF7),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF282828),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF009EF7),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _doLogin(BuildContext context, WidgetRef ref) async {
    final userName = userNameTextController.text;
    final passWord = passWordTextController.text;
    final authented = await ref
        .read(authenManagerProvider.notifier)
        .authenLogin(
            User(userName: userName, passWord: passWord, name: "datdt74"));

    if (authented && context.mounted) {
     context.go(RoutePath.home);
    } else if (context.mounted) {
      AppAlerts.displaySnackbar(context, "Username or Password is incorrect!!!");
    }
  }
}
