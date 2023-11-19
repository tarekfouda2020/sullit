import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/pagination_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
@immutable
class PaginationModel extends BaseApiModel<PaginationDomainModel> with _$PaginationModel {
  const PaginationModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PaginationModel({
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'count_items') required int countItems,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'next_page_url') required String nextPage,
    @JsonKey(name: 'perv_page_url') required String prevPage,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  @override
  PaginationDomainModel toDomainModel() {
    return PaginationDomainModel(
      countItems: countItems,
      currentPage: currentPage,
      nextPage: nextPage,
      perPage: perPage,
      pervPage: prevPage,
      totalItems: totalItems,
      totalPages: totalPages,
    );
  }
}
