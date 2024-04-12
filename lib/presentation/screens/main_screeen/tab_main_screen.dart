import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/main_screeen/news_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/profile_screen.dart';

import 'first_tap/first_tap_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Route<dynamic>? onGenerateTabRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/main":
      return MaterialPageRoute(
        builder: (context) => const NewsScreen(),
        settings: settings,
      );
    case "/profile":
      return MaterialPageRoute(
          builder: (context) => ProfileScreen(
                arguments: ProfileScreenPageArguments.fromJson(
                    settings.arguments as Map<String, dynamic>),
              ),
          settings: settings,
          fullscreenDialog: true);
  }
  return null;
}

class TabMainScreen extends StatefulWidget {
  const TabMainScreen({super.key});

  @override
  State<TabMainScreen> createState() => _TabMainScreenState();
}

class _TabMainScreenState extends State<TabMainScreen> {
  int index = 0;

  List<Widget> pages = [
    const FirstTapScreen(),
    Container(color: Colors.redAccent,),
    Container(color: Colors.greenAccent,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: ""),
        ],
      ),
    );
  }
}
