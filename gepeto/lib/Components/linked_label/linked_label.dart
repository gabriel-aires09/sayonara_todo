import 'package:flutter/material.dart';
import 'linked_label_view_model.dart';

class LinkedLabel extends StatelessWidget {
  final LinkedLabelViewModel viewModel;

  const LinkedLabel({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (viewModel.onTap != null) {
          // Executa função personalizada, se fornecida
          viewModel.onTap!();
        } else if (viewModel.route != null) {
          // Navega para a rota, se fornecida
          Navigator.pushNamed(context, viewModel.route!);
        }
      },
      child: Text(
        viewModel.label,
        style: viewModel.textStyle,
      ),
    );
  }
}
