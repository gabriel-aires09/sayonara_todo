import 'package:flutter/material.dart';
import '../login/login_factory.dart';

class PasswordPageRouter {
  static void goToSignInPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                LoginPageFactory.login()));
  }
}
