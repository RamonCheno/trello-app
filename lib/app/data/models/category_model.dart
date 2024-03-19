class Category {
  int? idCategory;
  late String nameCategory;

  Category({this.idCategory, required this.nameCategory});

  Category.fromJson(Map<String, dynamic> json) {
    idCategory = json['id_category'];
    nameCategory = json['name_category'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    // data['id_category'] = idCategory;
    data['name_category'] = nameCategory;
    return data;
  }
}
