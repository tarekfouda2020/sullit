import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/color_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_model.freezed.dart';
part 'color_model.g.dart';

@freezed
@immutable
class ColorModel extends BaseApiModel<ColorDomainModel> with _$ColorModel {
  const ColorModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ColorModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String code,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);

  @override
  ColorDomainModel toDomainModel() {
    return ColorDomainModel(name: name, id: id, code: code);
  }
}
