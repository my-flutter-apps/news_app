import 'package:flutter/material.dart';

import '../tab_navigator.dart';
import 'first_tap_details_screen.dart';
import 'first_tap_root_screen.dart';

GlobalKey<NavigatorState> firstTapNavigator = GlobalKey<NavigatorState>();

class FirstTapScreen extends StatelessWidget {
  const FirstTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabNavigator(
      tabNavigatorKey: firstTapNavigator,
      routeBuilders: onGenerateRoute,
      initialRoute: '/root',
    );
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/root" :
       return MaterialPageRoute(
            builder: (_) => const FirstTapRootScreen(), settings: settings);
      case "/firstTapDetails":
        return MaterialPageRoute(builder: (_)=> const FirstTapDetails(), settings: settings);
    }
    return null;
  }

}
