import 'dart:convert';

class RegisterRequest {
  RegisterRequest(
      {required this.email, required this.username, required this.password});

  String email;
  String username;
  String password;

  factory RegisterRequest.fromRawJson(String str) =>
      RegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
          email: json["email"],
          username: json["username"],
          password: json["password"]);

  Map<String, dynamic> toJson() =>
      {"email": email, "name": username, "password": password};
}
