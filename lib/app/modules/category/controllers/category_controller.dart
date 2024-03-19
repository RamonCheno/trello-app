import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trello_app/app/data/models/category_model.dart';
import 'package:trello_app/app/data/providers/category_provider.dart';

class CategoryController extends GetxController {
  List<Category> categoryList = <Category>[].obs;
  final String title = 'My Awesome View';
  final CategoryProvider _categoryProvider = Get.find<CategoryProvider>();

  @override
  void onInit() {
    getCategoryAll();
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {}

  void getCategoryAll() {
    try {
      _categoryProvider.getCategoryAll().then((resp) {
        if (resp.isNotEmpty) {
          categoryList.addAll(resp);
          update();
        }
      }, onError: (error) {
        showSnackBar("Error", error.toString(), Colors.red);
      });
    } catch (exception) {
      showSnackBar("Exception", exception.toString(), Colors.red);
    }
  }

  showSnackBar(String title, String message, Color backgroundColor) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: backgroundColor,
        colorText: Colors.white);
  }
}
