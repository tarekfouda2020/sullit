import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_branch_model.freezed.dart';

part 'pharmacy_branch_model.g.dart';

@freezed
class PharmacyBranchModel extends BaseApiModel<BranchDomainModel> with _$PharmacyBranchModel {
  const PharmacyBranchModel._();
   const factory PharmacyBranchModel({
    required int id,
    required String name,
    required String phone,
    required String address,
    required String latitude,
    required String longitude,
    @JsonKey(name: 'map_desc') required String mapDescription,
    @JsonKey(name: 'is_default') required bool isDefault,
    @JsonKey(name: 'distance_km') double? distanceKm,
    required PharmacyBranchLocationModel state,
    required PharmacyBranchLocationModel city,
  }) = _PharmacyBranchModel;

  factory PharmacyBranchModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyBranchModelFromJson(json);

  @override
  BranchDomainModel toDomainModel() {
    return BranchDomainModel(
      id: id,
      name: name,
      phone: phone,
      state: state.toDomainModel(),
      city: city.toDomainModel(),
      address: address,
      mapDescription: mapDescription,
      latitude: latitude,
      longitude: longitude,
      isDefault: isDefault,
      distanceKm: distanceKm,
    );
  }
}

@freezed
class PharmacyBranchLocationModel extends BaseApiModel<BranchLocationDomainModel>
    with _$PharmacyBranchLocationModel {
  const PharmacyBranchLocationModel._();
  const factory PharmacyBranchLocationModel({
    required int id,
    required String name,
  }) = _PharmacyBranchLocationModel;

  factory PharmacyBranchLocationModel.fromJson(Map<String, dynamic> json,) =>
      _$PharmacyBranchLocationModelFromJson(json);

  @override
  BranchLocationDomainModel toDomainModel() {
    return BranchLocationDomainModel(id: id, name:name);
  }
}
