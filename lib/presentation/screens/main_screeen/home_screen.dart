import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Home"),
        // leading: DrawerButton(
        //
        // ),
      ),
      // drawer: Container(color: Colors.tealAccent,),
      body: SafeArea(
        child: Container(
        ),
      ),
    );
  }
}
