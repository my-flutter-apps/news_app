import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        actions: [
          TextButton(onPressed: (){}, child: const Text("Create Account"))
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}