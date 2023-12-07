import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'DevDate',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              reverse: true,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
