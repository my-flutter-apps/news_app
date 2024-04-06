import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("News"),),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/profile", arguments: {"profileName": "Luisne"});
          }, child: Text("Click to go next page")),
        ),
      ),
    );
  }
}
