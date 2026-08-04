import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
@immutable
class CountryModel extends BaseApiModel<Country> with _$CountryModel {
  const CountryModel._();
  @JsonSerializable(explicitToJson: true)
  const factory CountryModel(
      {required int id,
      required String name,
      required String code}) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  @override
  Country toDomainModel() {
    return Country(name: name, id: id, code: code);
  }
}
