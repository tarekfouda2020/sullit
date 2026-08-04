import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/attribute_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_value_model.freezed.dart';
part 'attribute_value_model.g.dart';

@freezed
@immutable
class AttributeValueModel extends BaseApiModel<AttributeValue>
    with _$AttributeValueModel {
  const AttributeValueModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AttributeValueModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'color_code') String? colorCode,
  }) = _AttributeValueModel;

  factory AttributeValueModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeValueModelFromJson(json);

  @override
  AttributeValue toDomainModel() {
    return AttributeValue(id: id, colorCode: colorCode, value: value);
  }
}
