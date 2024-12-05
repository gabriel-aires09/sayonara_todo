import 'package:flutter/material.dart';
import 'scenes/login/login_view.dart';
import 'scenes/signup/sign_up_view.dart';
import 'scenes/change_password/password_view.dart';

void main() => runApp(ToDoApp());

class ToDoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/password': (context) => const PasswordScreen(),
      },
    );
  }
}
