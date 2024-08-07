import 'common.dart';

// Category接口中每个category的数据
class CategoryModel {
  final int id;
  final String name;
  final String ttype;
  final String coverUrl;
  final int count;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.ttype,
      required this.coverUrl,
      required this.count});

  // 从json创建User对象
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json["id"],
        name: json["name"],
        ttype: json["ttype"],
        coverUrl: json["cover_url"],
        count: json["count"]);
  }
}

// 给CategoryModel增加了分类字段
class ListCategoryModel {
  CategoryModel categoryModel;
  String bigCategory;

  ListCategoryModel({required this.categoryModel, required this.bigCategory});
}

typedef CategoryModelSet = List<CategoryModel>;
// category接口的返回数据类型
typedef CategoryResponse = Map<String, CategoryModelSet>;

// 接口转换处理
class CategoryDataStatus extends DataStatus {
  CategoryResponse? response;
  CategoryDataStatus({required super.status, super.errorMsg, this.response});
}
