import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_terms_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_order_terms_model.freezed.dart';

part 'pharmacy_order_terms_model.g.dart';

@freezed
class PharmacyOrderTerms extends BaseApiModel<PharmacyOrderTermsModel>
    with _$PharmacyOrderTerms {
  const PharmacyOrderTerms._();

  const factory PharmacyOrderTerms({
    required int id,
    required String title,
    required String content,
  }) = _PharmacyOrderTerms;

  factory PharmacyOrderTerms.fromJson(Map<String, dynamic> json) =>
      _$PharmacyOrderTermsFromJson(json);

  @override
  PharmacyOrderTermsModel toDomainModel() {
    return PharmacyOrderTermsModel(id: id, title: title, content: content);
  }
}
