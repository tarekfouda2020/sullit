import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/insurance_company.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insurance_company_model.freezed.dart';
part 'insurance_company_model.g.dart';

@freezed
@immutable
class InsuranceCompanyModel extends BaseApiModel<InsuranceCompany>
    with _$InsuranceCompanyModel {
  const InsuranceCompanyModel._();

  @JsonSerializable(explicitToJson: true)
  const factory InsuranceCompanyModel({
    required int id,
    required String name,
    required String code,
    required String logo,
  }) = _InsuranceCompanyModel;

  factory InsuranceCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$InsuranceCompanyModelFromJson(json);

  @override
  InsuranceCompany toDomainModel() {
    return InsuranceCompany(
      id: id,
      name: name,
      code: code,
      logo: logo,
    );
  }
}
