import 'package:get/get.dart';

import 'package:trello_app/app/modules/category/bindings/category_binding.dart';
import 'package:trello_app/app/modules/category/views/category_view.dart';
import 'package:trello_app/app/modules/home/bindings/home_binding.dart';
import 'package:trello_app/app/modules/home/views/index_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.category;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.category,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
  ];
}
