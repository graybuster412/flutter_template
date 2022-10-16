import 'dart:convert';

class ResetPasswordRequest {
  ResetPasswordRequest({
    required this.email,
    required this.password,
    required this.code,
  });

  String email;
  String password;
  String code;

  factory ResetPasswordRequest.fromRawJson(String str) =>
      ResetPasswordRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      ResetPasswordRequest(
        email: json["email"],
        password: json["password"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "code": code,
      };
}
