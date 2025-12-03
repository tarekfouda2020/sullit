import 'package:flutter_tdd/features/user/category/domain/models/sub_category.dart';

class SubCategoryLevel {
  SubCategory subCategory;
  int selectedCategoryId;

  SubCategoryLevel({
    required this.subCategory,
    required this.selectedCategoryId,
  });
}

