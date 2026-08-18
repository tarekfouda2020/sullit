import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/country_model/country_model.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_model.freezed.dart';
part 'state_model.g.dart';

@freezed
@immutable
class StateModel extends BaseApiModel<StateDomainModel> with _$StateModel {
  const StateModel._();

  @JsonSerializable(explicitToJson: true)
  const factory StateModel({
    required int id,
    required String name,
    CountryModel? country,
  }) = _StateModel;

  factory StateModel.fromJson(Map<String, dynamic> json) =>
      _$StateModelFromJson(json);

  @override
  StateDomainModel toDomainModel() {
    return StateDomainModel(
      id: id,
      name: name,
      country: country?.toDomainModel(),
    );
  }
}
