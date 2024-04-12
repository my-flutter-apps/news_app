import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/main_screeen/drawer_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/favorite_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/home_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/news_screen.dart';
import 'package:news_app/presentation/screens/main_screeen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  List<Widget> pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const NewsScreen(),
    const ProfileScreen()
  ];

  void openDrawer() {
    if (drawerKey.currentState == null) return;
    drawerKey.currentState!.openEndDrawer();
  }

  ///TODO: -- check bottom
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        title: const Text("Main screen"),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //   ),
        //   onPressed: openDrawer,
        // ),
      ),
      // endDrawer: Container(
      //   width: 280,
      //   color: Colors.green,
      // ),
      drawerEdgeDragWidth: 250.0,
      drawer: const DrawerScreen(

      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blue,
        // elevation: 1.0,
        // type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.deepOrange),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'News',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_accessibility_outlined),
              label: 'Profile',
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
