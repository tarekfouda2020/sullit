import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_step_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_comparison_step_model.freezed.dart';
part 'price_comparison_step_model.g.dart';

@freezed
class PriceComparisonStepModel
    extends BaseApiModel<PriceComparisonStepDomainModel>
    with _$PriceComparisonStepModel {
  const PriceComparisonStepModel._();

  const factory PriceComparisonStepModel({
    required String key,
    required String label,
    required String status,
  }) = _PriceComparisonStepModel;

  factory PriceComparisonStepModel.fromJson(Map<String, dynamic> json) =>
      _$PriceComparisonStepModelFromJson(json);

  @override
  PriceComparisonStepDomainModel toDomainModel() {
    return PriceComparisonStepDomainModel(
      key: key,
      label: label,
      status: status,
    );
  }
}
