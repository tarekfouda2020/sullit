import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/attribute_value_model/attribute_value_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/attributes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attributes_model.freezed.dart';
part 'attributes_model.g.dart';

@freezed
@immutable
class AttributesModel extends BaseApiModel<Attributes> with _$AttributesModel {
  const AttributesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AttributesModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'attribute_values')
    required List<AttributeValueModel> attributesValues,
  }) = _AttributesModel;

  factory AttributesModel.fromJson(Map<String, dynamic> json) =>
      _$AttributesModelFromJson(json);

  @override
  Attributes toDomainModel() {
    return Attributes(
      id: id,
      name: name,
      attributeValues: attributesValues.map((e) => e.toDomainModel()).toList(),
    );
  }
}
