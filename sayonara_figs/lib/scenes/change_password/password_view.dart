import 'package:flutter/material.dart';
import 'package:gepeto/gepeto.dart';
import '../change_password/password_router.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {

  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium,
            GestureDetector(
              onTap: () => PasswordPageRouter.goToSignInPage(context),
              child: const Icon(Icons.arrow_back, color: Colors.purple),
            ),
            verticalSpaceSmall,
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'assets/148x148.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            verticalSpaceSmall,
            const Text(
              'Change Password',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: heading,
              ),
            ),
            verticalSpaceMedium,
            InputField(
              viewModel: InputViewModel(
                labelText: 'Password',
                icon: Icons.lock_outline,
                obscureText: true,
                controller: _pwController,
              ),
            ),
            verticalSpaceMedium,
            InputField(
              viewModel: InputViewModel(
                labelText: 'Confirm Password',
                controller: _pwdController,
                icon: Icons.lock_outline,
                obscureText: true,
              ),
            ),
            verticalSpaceExtraLarge,
            ActionButton(
              viewModel: ActionButtonViewModel(
                label: 'Save',
                textStyle: buttonTextStyle,
                buttonColor: buttonColor,
                onPressed: () {
                  Navigator.pop(context); // Implementar ação de registro.
                },
              ),
            ),
            verticalSpaceExtraLarge,
          ],
        ),
      ),
    );
  }
}
