import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../shared/shared.dart';

FutureOr<Request> requestInterceptor(request) async {
  var storage = Get.find<SharedPreferences>();
  final token = storage.getString(StorageConstants.token);
  if (token != null) {
    request.headers['Authorization'] = 'Bearer $token';
  }
  // request.headers['X-Requested-With'] = 'XMLHttpRequest';
  // EasyLoading.show(status: 'loading...');
  return request;
}
