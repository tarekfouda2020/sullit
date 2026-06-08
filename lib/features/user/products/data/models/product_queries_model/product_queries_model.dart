import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/queries_model/queries_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_queries.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_queries_model.freezed.dart';
part 'product_queries_model.g.dart';

@freezed
@immutable
class ProductQueriesModel extends BaseApiModel<ProductQueries>
    with _$ProductQueriesModel {
  const ProductQueriesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductQueriesModel({
    @JsonKey(name: 'own_product_queries')
    required List<QueriesModel> ownProductQueries,
    @JsonKey(name: 'other_product_queries')
    required List<QueriesModel> otherProductQueries,
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'queries_offset') required int queriesOffset,
  }) = _ProductQueriesModel;

  factory ProductQueriesModel.fromJson(Map<String, dynamic> json) =>
      _$ProductQueriesModelFromJson(json);

  @override
  ProductQueries toDomainModel() {
    return ProductQueries(
        ownProductQueries:
            ownProductQueries.map((e) => e.toDomainModel()).toList(),
        otherProductQueries:
            otherProductQueries.map((e) => e.toDomainModel()).toList(),
        totalCount: totalCount,
        queriesOffset: queriesOffset);
  }
}
