import 'package:flutter/material.dart';
import 'package:gepeto/gepeto.dart';
import 'package:sayonara_figs/scenes/signup/sign_up_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
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
            verticalSpaceSmall,
            GestureDetector(
              onTap: () => SignupPageRouter.goToLoginPage(context),
              child: const Icon(Icons.arrow_back, color: Colors.purple),
            ),
            verticalSpaceMedium,
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
              'Sign Up',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: heading,
              ),
            ),
            verticalSpaceMedium,
            InputField(
              viewModel: InputViewModel(
                labelText: 'Full Name',
                icon: Icons.person_2_outlined,
                controller: _userController,
              ),
            ),
            verticalSpaceMedium,
            InputField(
              viewModel: InputViewModel(
                labelText: 'Email',
                icon: Icons.email_outlined,
                controller: _emailController,
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
                icon: Icons.lock_outline,
                obscureText: true,
                controller: _pwdController,
              ),
            ),
            verticalSpaceMedium,
            ActionButton(
              viewModel: ActionButtonViewModel(
                label: 'Sign Up',
                textStyle: buttonTextStyle,
                buttonColor: buttonColor,
                onPressed: () {
                  SignupPageRouter.goToLoginPage(context);
                },
              ),
            ),
            verticalSpaceExtraLarge,
            Align(
              alignment: Alignment.center,
              child: LinkedLabel(
                viewModel: LinkedLabelViewModel(
                  label: 'Already have an account? Sign In',
                  onTap: () {
                    SignupPageRouter.goToLoginPage(context); // Retorna para a tela de Sign In.
                  },
                ),
              ),
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
