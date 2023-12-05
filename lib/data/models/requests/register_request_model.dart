import 'dart:convert';

// {
//   "name" : "Rizqi",
//   "password" : "12345",
//   "email" : "rizqirezaardiansyah@gmail.com",
//   "username": "rizqi"
// }

class RegisterRequestModel {
  final String name;
  final String password;
  final String email;
  final String username;

  RegisterRequestModel(
      {required this.name,
      required this.password,
      required this.email,
      required this.username});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'password': password,
      'email': email,
      'username': username,
    };
  }

  String toJson() => json.encode(toMap());
}