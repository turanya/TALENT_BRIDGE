import 'package:flutter/material.dart';
import 'package:talent_bridge/screens/auth/signup_screen.dart';
import 'package:talent_bridge/screens/student/dashboard.dart';
import 'package:talent_bridge/widgets/animated_button.dart';
import 'package:talent_bridge/widgets/fade_in.dart';
import 'package:talent_bridge/widgets/gradient_card.dart';
import 'package:talent_bridge/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 80),
              FadeIn(
                child: GradientCard(
                  child: Column(
                    children: [
                      const Text(
                        'Talent Bridge',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'AI-Powered Talent Ecosystem',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.white90,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              FadeIn(
                duration: const Duration(milliseconds: 800),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
  controller: _emailController,
  decoration: InputDecoration(  // Added const here
    labelText: 'Email',
    prefixIcon: const Icon(Icons.email),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  },
),
                      const SizedBox(height: 20),
                      TextFormField(
  controller: _passwordController,
  obscureText: true,
  decoration: InputDecoration(  // Added const here
    labelText: 'Password',
    prefixIcon: const Icon(Icons.lock),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  },
),
                      const SizedBox(height: 30),
                      AnimatedButton(
                        text: 'Login',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DashboardScreen(),
                              ),
                            );
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Don\'t have an account? Sign up',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}