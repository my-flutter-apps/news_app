import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/main_screeen/profile_screen.dart';

import '../../../resources/theme/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Lusine";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Home"),
      // leading: DrawerButton(
      //
      // ),
      // ),
      // drawer: Container(color: Colors.tealAccent,),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  onPressed: () {
                    navigateProfilePage();
                  },
                  child: const Text("Change me!")),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                "Hello $name",
                style: semiBold32TextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// TODO: -- pushNamed - argument and return values
  Future<void> navigateProfilePage() async {
    // arguments: {"profileName": name}
    // await Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ProfileScreen()))
    final value = await Navigator.pushNamed(context, "/profile", arguments: {"profileName": name});
    print(value.runtimeType);
    setState(() {
      name = "$value";
    });
    //     .then((value) {
    //   if (value != null) {
    //     setState(() {
    //       name = "$value";
    //     });
    //   }
    // }).catchError((e) {
    //   debugPrint("catchError");
    //   debugPrint(e.toString());
    // });
  }
}
