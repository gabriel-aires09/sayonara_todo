import 'package:flutter/material.dart';
import 'action_button_view_model.dart';

class ActionButton extends StatelessWidget {
  final ActionButtonViewModel viewModel;

  const ActionButton({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ocupa toda a largura disponível
      child: ElevatedButton(
        onPressed: viewModel.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: viewModel.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Arredondamento consistente
          ),
          padding: const EdgeInsets.symmetric(vertical: 30), // Altura do botão
          elevation: 0, // Sem sombra
        ),
        child: Text(
          viewModel.label,
          style: viewModel.textStyle.copyWith(fontSize: 16), // Centraliza o texto
        ),
      ),
    );
  }
}

