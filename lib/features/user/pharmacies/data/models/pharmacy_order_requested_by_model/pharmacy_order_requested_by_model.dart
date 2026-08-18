import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_requested_by_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_order_requested_by_model.freezed.dart';

part 'pharmacy_order_requested_by_model.g.dart';

@freezed
class PharmacyOrderRequestedBy extends BaseApiModel<PharmacyOrderRequestedByModel>
    with _$PharmacyOrderRequestedBy {
  const PharmacyOrderRequestedBy._();

  const factory PharmacyOrderRequestedBy({
    required String key,
    required String label,
  }) = _PharmacyOrderRequestedBy;

  factory PharmacyOrderRequestedBy.fromJson(Map<String, dynamic> json) =>
      _$PharmacyOrderRequestedByFromJson(json);

  @override
  PharmacyOrderRequestedByModel toDomainModel() {
    return PharmacyOrderRequestedByModel(key: key, label: label);
  }
}
