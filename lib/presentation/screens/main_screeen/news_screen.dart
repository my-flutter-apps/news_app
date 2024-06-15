import 'package:flutter/material.dart';
import 'package:news_app/config/local/secure/secure_storage.dart';
import 'package:news_app/mobel/user_model/user_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  List<UserModel> savedUsers = <UserModel>[];
   UserModel? savedUser;

  @override
  void initState() {
    super.initState();
    readData();
  }

  void readData() async {
    savedUsers = await SecureStorage.instance.readAllUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Name",
                  ),
                ),
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "phone",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          UserModel user = UserModel(
                              phone: phoneController.text, name: nameController.text);
                          await SecureStorage.instance.saveUser(user);
                        },
                        child: Text("Save as Admin!")),
                    SizedBox(width: 24.0,),
                    ElevatedButton(
                        onPressed: () async {
                          UserModel user = UserModel(
                              phone: phoneController.text, name: nameController.text);
                          await SecureStorage.instance.saveUser(user, key: phoneController.text);
                        },
                        child: Text("Save User!")),
                  ],
                ),
                Divider(),
                ElevatedButton(
                    onPressed: () async {
                      savedUser = await SecureStorage.instance.readDefaultUser();
                      setState(() {});
                    },
                    child: Text("Read Admin!")),
                SizedBox(
                  height: 30,
                ),
                if (savedUser != null)
                  Column(
                    children: [
                      Text(savedUser!.name),
                      Text(savedUser!.phone),
                    ],
                  ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(height: 24.0,),
                ElevatedButton(
                    onPressed: readData,
                    child: Text("Read Users!")),
                SizedBox(
                  height: 30,
                ),
                if(savedUsers.isNotEmpty)
                  for(var user in savedUsers)
                    ListTile(title: Text(user.name), subtitle: Text(user.phone),),

              ]
            ),
          ),
        ),
      ),
    );
  }
}
