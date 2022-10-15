import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController();

  var errorMessage = {
    'phone_number': '',
    'password': '',
    'register_phone_number': '',
    'pincode': '',
    'confirm_password': '',
    'new_password': '',
  }.obs;
  var isLoading = false.obs;
  var isError = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();

    emailController.dispose();
    passwordController.dispose();
  }
}
