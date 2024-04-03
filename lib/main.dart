
import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/main_screeen/main_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/profile_screen.dart';
import 'package:news_app/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:news_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:news_app/resources/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( // Navigator
      title: 'News App',
      // routes: {
      //   "/": (context) => const SplashScreen(),
      //   "/onboarding" : (context) => const OnboardingScreen(),
      //   "/main": (context) => const MainScreen(),
      //   "/profile" : (context) => const ProfileScreen(),
      // },
      onGenerateRoute: onGenerateRoute,
      initialRoute: "/",
      // theme: ThemeData(
      //   // colorScheme: ColorScheme.fromSeed(seedColor: primary500),
      //   useMaterial3: true,
      // ),
      // home: MainScreen(),
    );
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch(settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashScreen(), settings: settings, );
      case "/onboarding":
        return MaterialPageRoute(builder: (context) => const OnboardingScreen(), settings: settings);
      case "/main":
        return MaterialPageRoute(builder: (context) => const MainScreen(), settings: settings);
      case "/profile":
        return MaterialPageRoute(builder: (context) =>  ProfileScreen(
          arguments: ProfileScreenPageArguments.fromJson(settings.arguments as Map<String, dynamic>),
        ), settings: settings, fullscreenDialog: true);
    }
    return null;
  }
}
