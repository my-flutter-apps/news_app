import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:news_app/resources/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary500),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}