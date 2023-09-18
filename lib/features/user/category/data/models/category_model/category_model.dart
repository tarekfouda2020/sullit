import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
@immutable
class CategoryModel extends BaseApiModel<Category>
    with _$CategoryModel {
  const CategoryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CategoryModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'icon') required String icon,
    @JsonKey(name: 'order_level') required int orderLevel,
    @JsonKey(name: 'digital') required int digital,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'chileds')  List<CategoryModel>? subCats,

  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  @override
  Category toDomainModel() {
    return Category(
      name: name,
      id: id,
      digital: digital,
      icon: icon,
      orderLevel: orderLevel,
      slug: slug,
      banner: banner,
      subCats: subCats?.map((e) => e.toDomainModel()).toList(),
    );
  }
}
