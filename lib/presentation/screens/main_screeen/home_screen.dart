import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [

                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.deepPurple,
                      )),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
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
