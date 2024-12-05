import 'package:flutter/material.dart';
import 'input_field_view_model.dart';
import 'package:gepeto/Shared/colors.dart';
import 'package:gepeto/Shared/styles.dart';

class InputField extends StatelessWidget {
  final InputViewModel viewModel;

  const InputField({super.key, required this.viewModel});

  const InputField._({required this.viewModel});

  static Widget instantiate({required InputViewModel viewModel}) {
    return InputField._(viewModel: viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: viewModel.controller,
      obscureText: viewModel.obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(
          viewModel.icon,
          color: iconColor,
        ),
        labelText: viewModel.labelText,
        labelStyle: labelStyle,
        filled: true, // Habilita a cor de preenchimento
        fillColor: Colors.white, // Define a cor de fundo do campo
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Borda arredondada
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Borda arredondada
          borderSide: const BorderSide(
            color: primary, // Cor da borda ao focar
            width: 2, // Largura da borda ao focar
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20, // Espaçamento vertical dentro do campo
          horizontal: 20, // Espaçamento horizontal dentro do campo
        ),
      ),
      style: inputTextStyle,
    );
  }
}
