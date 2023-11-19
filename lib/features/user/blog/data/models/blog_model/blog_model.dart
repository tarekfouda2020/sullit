import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/blog/domain/models/blog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';
part 'blog_model.g.dart';

@freezed
@immutable
class BlogModel extends BaseApiModel<Blog> with _$BlogModel {
  const BlogModel._();

  @JsonSerializable(explicitToJson: true)
  const factory BlogModel(
      {required int id,
      required String banner,
      required String title,
      required String slug,
      required String category,
      @JsonKey(name: "short_description") required String shortDescription,
      required String description}) = _BlogModel;

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);

  @override
  Blog toDomainModel() {
    return Blog(
      id: id,
      banner: banner,
      slug: slug,
      title: title,
      category: category,
      description: description,
      shortDescription: shortDescription,
    );
  }
}
