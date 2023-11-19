import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/pagination_model/pagination_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/section_pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_pagination_model.freezed.dart';
part 'section_pagination_model.g.dart';

@freezed
@immutable
class SectionPaginationModel extends BaseApiModel<SectionPagination>
    with _$SectionPaginationModel {
  const SectionPaginationModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SectionPaginationModel({
    required List<ProductModel> products,
    required PaginationModel pagination,
  }) = _SectionPaginationModel;

  factory SectionPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$SectionPaginationModelFromJson(json);

  @override
  SectionPagination toDomainModel() {
    return SectionPagination(
      products: products.map((e) => e.toDomainModel()).toList(),
      pagination: pagination.toDomainModel(),
    );
  }
}
