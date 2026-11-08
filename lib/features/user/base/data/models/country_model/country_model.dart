import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/models/api_model/base_api_model.dart';
import '../../../domain/models/country_domain_model.dart';
part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel extends BaseApiModel<CountryDomainModel> with _$CountryModel {
  const CountryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CountryModel({
    required int id,
    required String name,
    required String code,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

  @override
  CountryDomainModel toDomainModel() {
    return CountryDomainModel(
      id: id,
      name: name,
      code: code,
    );
  }
}
