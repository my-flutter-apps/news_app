import 'package:flutter/material.dart';

class ProfileScreenPageArguments {
  final String? profileName;
  ProfileScreenPageArguments(this.profileName);
  factory ProfileScreenPageArguments.fromJson(Map<String, dynamic> json ) {
    return ProfileScreenPageArguments(json["profileName"]);
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.arguments});

  final ProfileScreenPageArguments? arguments;

  @override
  Widget build(BuildContext context) {
    final names = [
      "Alina",
      "Hakob",
      "Marieta",
      "Nikolay",
      "Jora",
      "Nune",
      "Vlad",
      "Vahagn",
      "Gohar",
      "Ruben",
      "Lusine"
    ];

    return Scaffold(
      appBar: AppBar(
        title:  Text(arguments?.profileName ?? "Profile"),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (cont, index) {
              final name = names[index];
              return Card(
                color: Colors.red[100],
                child: ListTile(
                  title: Text(name),
                  onTap: () {
                    Navigator.pop<String>(context, name);
                  },
                ),
              );
            },
            separatorBuilder: (cont, index) {
              return const Divider();
            },
            itemCount: names.length),
      ),
    );
  }
}
