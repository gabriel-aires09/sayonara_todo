import 'package:flutter/material.dart';
import '../login/login_factory.dart';

class ToDoPageRouter {
  static void goToLoginPage(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LoginPageFactory.login()));
  }
}