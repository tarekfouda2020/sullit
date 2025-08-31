import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/base/domain/models/lang_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lang_model.freezed.dart';

part 'lang_model.g.dart';

@freezed
class LangModel extends BaseApiModel<LangDomainModel> with _$LangModel {
  const LangModel._();
  @JsonSerializable(explicitToJson: true)
  const factory LangModel({
    required int id,
    required String name,
    required String code,
    required String logo,
  }) = _LangModel;

  factory LangModel.fromJson(Map<String, dynamic> json) => _$LangModelFromJson(json);

  @override
  LangDomainModel toDomainModel() {
    return LangDomainModel(
      id: id,
      name: name,
      code: code,
      logo: logo,
    );
  }
}
