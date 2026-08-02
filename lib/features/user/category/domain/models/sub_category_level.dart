import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/sub_category.dart';

class SubCategoryLevel {
  SubCategory subCategory;
  List<Category> subCats;
  int selectedCategoryId;

  SubCategoryLevel({
    required this.subCategory,
    required this.subCats,
    required this.selectedCategoryId,
  });
}
