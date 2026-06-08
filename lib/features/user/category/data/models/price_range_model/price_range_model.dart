import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/price_range.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_range_model.freezed.dart';
part 'price_range_model.g.dart';

@freezed
@immutable
class PriceRangeModel extends BaseApiModel<PriceRange> with _$PriceRangeModel {
  const PriceRangeModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PriceRangeModel({
    @JsonKey(name: 'min') required String min,
    @JsonKey(name: 'max') required String max,
  }) = _PriceRangeModel;

  factory PriceRangeModel.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeModelFromJson(json);

  @override
  PriceRange toDomainModel() {
    return PriceRange(max: max, min: min);
  }
}
