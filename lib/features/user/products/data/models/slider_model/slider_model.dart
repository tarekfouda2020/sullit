import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/slider_model/slider_value_converter/slider_value_converter.dart';
import 'package:flutter_tdd/features/user/products/domain/models/slider_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

FlexibleValue? valueFromJson(Object? json) {
  if (json == null) return null;
  return FlexibleValue.fromJson(json);
}

Object? valueToJson(FlexibleValue? value) {
  return value?.toJson();
}

@freezed
@immutable
class SliderModel extends BaseApiModel<SliderDomainModel> with _$SliderModel {
  const SliderModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SliderModel({
    @JsonKey(name: "photo") required String photo,
    @JsonKey(name: "link_type") required String linkType,
    @JsonKey(
      name: "value",
      fromJson: valueFromJson,
      toJson: valueToJson,
    )
    required FlexibleValue? value,
  }) = _SliderModel;

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);

  @override
  SliderDomainModel toDomainModel() {
    return SliderDomainModel(
      photo: photo,
      linkType: linkType,
      value: value?.asString,
    );
  }



}
