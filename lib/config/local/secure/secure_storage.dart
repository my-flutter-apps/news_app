import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:news_app/mobel/user_model/user_model.dart';

class SecureStorageKey {
  static String user = "user";
}

class SecureStorage {
  SecureStorage._();

  static SecureStorage? _instance;

  static SecureStorage get instance {
    _instance ??= SecureStorage._();
    return _instance!;
  }

  final secureStorage = const FlutterSecureStorage();

  Future<void> saveUser(UserModel userModel, {String? key}) async {
    final userModelString = jsonEncode(userModel.json);
    await secureStorage.write(key: key ?? SecureStorageKey.user, value: userModelString);
  }

  Future<UserModel?> readDefaultUser() async {
    final userModelString = await secureStorage.read(key: SecureStorageKey.user);
    if(userModelString != null && userModelString.isNotEmpty) {
      Map<String, dynamic> userModelDecodedObject = jsonDecode(userModelString);
      return UserModel(phone: userModelDecodedObject["phone"], name: userModelDecodedObject["name"]);
    }
    return null;
  }

  Future<List<UserModel>> readAllUser() async {
    Map<String, String> allData = await secureStorage.readAll();
    if(allData.isNotEmpty) {
     final users = allData.values.map((e) {
        Map<String, dynamic> userData = jsonDecode(e);
        return UserModel(phone: userData["phone"], name: userData["name"]);
      }).toList();

     return users;
    }

    return <UserModel>[];
  }

}