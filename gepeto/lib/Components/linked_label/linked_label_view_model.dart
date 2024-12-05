import 'package:flutter/material.dart';

class LinkedLabelViewModel {
  final String label;
  final TextStyle textStyle;
  final VoidCallback? onTap; // Função customizada opcional
  final String? route; // Rota para navegação, se fornecida

  LinkedLabelViewModel({
    required this.label,
    this.textStyle = const TextStyle(
      color: Colors.purple,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
    ),
    this.onTap,
    this.route,
  });
}
