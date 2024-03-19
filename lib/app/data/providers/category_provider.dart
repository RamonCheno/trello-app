import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trello_app/app/data/providers/base_provider.dart';

import '../models/category_model.dart';

class CategoryProvider extends BaseProvider {
  @override
  onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Category.fromJson(map);
      if (map is List) {
        return map.map((item) => Category.fromJson(item)).toList();
      }
    };
  }

  Future<Category?> getCategory(int id) async {
    final response = await get('category/$id');
    return response.body;
  }

  Future<List<Category>> getCategoryAll() async {
    final response = await get('category/all');
    // debugPrint("${urlBase}");
    final List<Category> listCategoryResponse = response.body;
    for (var categoryResponse in listCategoryResponse) {
      debugPrint(categoryResponse.nameCategory);
    }
    return listCategoryResponse;
  }

  Future<Response<Category>> postCategory(Category category) async {
    return await post('category', category);
  }

  Future<Response> deleteCategory(int id) async {
    return await delete('category/$id');
  }
}
