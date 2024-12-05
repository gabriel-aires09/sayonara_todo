import 'package:flutter/material.dart';

class ActionButtonViewModel {
  final String label;
  final VoidCallback onPressed;
  final Color buttonColor;
  final TextStyle textStyle;

  ActionButtonViewModel({
    required this.label,
    required this.onPressed,
    required this.buttonColor, // Cor padrão do botão (roxo claro)
    required this.textStyle,
  });
}