import 'package:flutter/material.dart';
import 'package:gepeto/gepeto.dart';
import 'login_router.dart';
import 'login_service.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Adicionando o SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                'Sign in',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: heading,
                ),
              ),
              verticalSpaceMedium,
              InputField(
                viewModel: InputViewModel(
                  labelText: 'Email or User Name',
                  icon: Icons.person_2_outlined,
                  controller: userController,
                ),
              ),
              verticalSpaceMedium,
              InputField(
                viewModel: InputViewModel(
                  labelText: 'Password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                  controller: passwordController,
                ),
              ),
              verticalSpaceMedium,
              Align(
                alignment: Alignment.centerRight,
                child: LinkedLabel(
                  viewModel: LinkedLabelViewModel(
                    label: 'Forget Password ?',
                    onTap: () {
                      LoginPageRouter.goToChangePwPage(context);
                    },
                  ),
                ),
              ),
              verticalSpaceMedium,
              ActionButton(
                viewModel: ActionButtonViewModel(
                  label: 'Sign in',
                  buttonColor: buttonColor,
                  textStyle: buttonTextStyle,
                  onPressed: () async {
                    try {
                      Map<String, dynamic> userData =
                          await LoginService.fetchLogin(
                              userController.text, passwordController.text);
                      // ignore: use_build_context_synchronously
                        LoginPageRouter.goToDoPage(context);
                    } catch (e) {

                    }
                  },
                ),
              ),
              verticalSpaceExtraLarge,
              const Center(
                child: Text(
                  'Or sign in With',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              verticalSpaceSmall,
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Flexible(
                  child: Image.asset(
                    'assets/social_media.png',
                    fit: BoxFit.contain, // Ajusta o conteúdo à área disponível
                    width:
                        350, // Define um tamanho máximo (ajuste conforme necessário)
                    height: 107,
                  ),
                ),
              ]),
              verticalSpaceExtraLarge,
              Center(
                child: LinkedLabel(
                  viewModel: LinkedLabelViewModel(
                    label: "Don’t have an account? Sign Up",
                    onTap: () {
                      LoginPageRouter.goToSignupPage(context);
                    },
                  ),
                ),
              ),
              verticalSpaceLarge
            ],
          ),
        ),
      ),
    );
  }
}
