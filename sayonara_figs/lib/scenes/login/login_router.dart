import 'package:flutter/material.dart';
import '../signup/sign_up_factory.dart';
import '../message/todo_factory.dart';
import '../change_password/password_factory.dart';

class LoginPageRouter {

  static void goToSignupPage(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SignupPageFactory.create()));
  }
  static void goToChangePwPage(BuildContext context){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => PwPageFactory.create())
    );
  }

  static void goToDoPage(BuildContext context){
    Navigator.push(context, 
      MaterialPageRoute(builder: (context) => ToDoPageFactory.toDo()));
  }
}
