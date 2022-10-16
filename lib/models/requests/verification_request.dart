import 'dart:convert';

class VerificationRequest {
  VerificationRequest({required this.email, required this.code});

  String email;
  String code;

  factory VerificationRequest.fromRawJson(String str) =>
      VerificationRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VerificationRequest.fromJson(Map<String, dynamic> json) =>
      VerificationRequest(email: json["email"], code: json["code"]);

  Map<String, dynamic> toJson() => {"email": email, "code": code};
}
