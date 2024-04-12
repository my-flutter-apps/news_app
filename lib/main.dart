
import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/main_screeen/first_tap/first_tap_details_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/main_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/profile_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/tab_main_screen.dart';
import 'package:news_app/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:news_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:news_app/resources/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

GlobalKey<NavigatorState> globalNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( // Navigator
      title: 'News App',
      navigatorKey: globalNavigatorKey,
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
        return MaterialPageRoute(builder: (_) => const SplashScreen(), settings: settings, );
      case "/onboarding":
        return MaterialPageRoute(builder: (_) => const OnboardingScreen(), settings: settings);
      case "/main":
        return MaterialPageRoute(builder: (_) => const TabMainScreen(), settings: settings);
      case "/firstTapDetails":
        return MaterialPageRoute(builder: (_)=> const FirstTapDetails(), settings: settings);
      // case "/profile":
      //   return MaterialPageRoute(builder: (context) =>  ProfileScreen(
      //     arguments: ProfileScreenPageArguments.fromJson(settings.arguments as Map<String, dynamic>),
      //   ), settings: settings, fullscreenDialog: true);
    }
    return null;
  }
}
