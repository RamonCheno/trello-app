import 'package:flutter/material.dart';
import 'package:get/get_connect/connect.dart';

class BaseProvider extends GetConnect {
  @override
  onInit() {
    httpClient.baseUrl = "http://192.168.1.82:8080/";
    debugPrint(httpClient.baseUrl);
    super.onInit();
  }
}
