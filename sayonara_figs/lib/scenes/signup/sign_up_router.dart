import 'package:flutter/material.dart';
import '../login/login_factory.dart';

class SignupPageRouter {
  static void goToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPageFactory.login())
    );
  }
}