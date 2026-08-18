import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/state_model/state_model.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
@immutable
class CityModel extends BaseApiModel<City> with _$CityModel {
  const CityModel._();
  @JsonSerializable(explicitToJson: true)
  const factory CityModel(
      {required int id, required String name, StateModel? state}) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  @override
  City toDomainModel() {
    return City(name: name, id: id, state: state?.toDomainModel());
  }
}
