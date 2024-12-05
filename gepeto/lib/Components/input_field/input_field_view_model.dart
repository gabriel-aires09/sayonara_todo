import 'package:flutter/material.dart';

class InputViewModel {
  final String labelText;
  final IconData icon;
  final TextEditingController? controller;
  final bool obscureText;

  InputViewModel({
    required this.labelText,
    required this.icon,
    required this.controller,
    this.obscureText = false,
  });
}
