import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/main_screeen/tab_main_screen.dart';

import '../../../../main.dart';

class FirstTapRootScreen extends StatelessWidget {
  const FirstTapRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstTapRootScreen"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.orange,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Go to next in tap"),
                onPressed: () {
                  Navigator.pushNamed(context, '/firstTapDetails');
                },
              ),
              SizedBox(height: 32.0,),
              ElevatedButton(
                child: Text("Go to next"),
                onPressed: () {
                  // globalNavigatorKey.currentState?.pushNamed('/firstTapDetails');
                  final cnt = globalNavigatorKey.currentState?.context;
                  print(cnt);
                  if(cnt != null) {
                    // Navigator.of(context)
                    Navigator.pushNamed(cnt, '/firstTapDetails');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
