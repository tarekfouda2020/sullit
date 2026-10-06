import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/search_query.dart';

part 'search_query_model.freezed.dart';

part 'search_query_model.g.dart';

@freezed
@immutable
class SearchQueryModel extends BaseApiModel<SearchQuery> with _$SearchQueryModel {
  const SearchQueryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SearchQueryModel({
    required int id,
    required String query,
    required int count,
    SearchQueryCategoryModel? category,
  }) = _SearchQueryModel;

  factory SearchQueryModel.fromJson(Map<String, dynamic> json) => _$SearchQueryModelFromJson(json);

  @override
  SearchQuery toDomainModel() {
    return SearchQuery(
      id: id,
      query: query,
      count: count,
      categoryId: category?.id,
      categoryName: category?.name,
    );
  }
}

@freezed
@immutable
class SearchQueryCategoryModel with _$SearchQueryCategoryModel {
  const SearchQueryCategoryModel._();

  @JsonSerializable()
  const factory SearchQueryCategoryModel({
    required int id,
    required String name,
  }) = _SearchQueryCategoryModel;

  factory SearchQueryCategoryModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SearchQueryCategoryModelFromJson(json);
}
