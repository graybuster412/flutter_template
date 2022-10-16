class CommonResponse {
  CommonResponse({required this.code, required this.success, this.message});

  int code;
  bool success;
  String? message;

  factory CommonResponse.fromJson(Map<String, dynamic> json) => CommonResponse(
        code: json["statusCode"],
        success: json["success"] ?? false,
        message: json["error"] == null ? null : json["error"],
      );
}
