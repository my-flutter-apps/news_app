class UserModel {
  final String name;
  final String phone;

  UserModel({required this.phone, required this.name});

  Map<String, dynamic> get json => {
    "phone": phone,
    "name": name
  };
}