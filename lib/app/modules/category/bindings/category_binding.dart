import 'package:get/get.dart';
import 'package:trello_app/app/data/providers/category_provider.dart';

import '../controllers/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryProvider>(
      () => CategoryProvider(),
    );
    Get.lazyPut<CategoryController>(
      () => CategoryController(),
    );
  }
}
