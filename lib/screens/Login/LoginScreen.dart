import 'package:driver/widgets/Auth/CustomButton.dart';
import 'package:driver/widgets/Forms/CustomFormField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void handleLogin() {
    if (_formKey.currentState!.validate()) {
      setState(() => isLoading = true);

      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      // Simulate login API call
      Future.delayed(const Duration(seconds: 2), () {
        setState(() => isLoading = false);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Logged in with: $email')));
        print('Email: $email, Password: $password');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFormField(
                label: 'Email',
                controller: _emailController,
                fieldType: FieldType.email,
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 16),
              CustomFormField(
                label: 'Password',
                controller: _passwordController,
                fieldType: FieldType.password,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 24),
              CustomButton(
                text: 'Login',
                onPressed: handleLogin,
                isLoading: isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
