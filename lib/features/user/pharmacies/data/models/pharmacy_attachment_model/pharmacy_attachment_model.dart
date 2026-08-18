import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_attachment_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_attachment_model.freezed.dart';
part 'pharmacy_attachment_model.g.dart';

@freezed
@immutable
class PharmacyAttachmentModel extends BaseApiModel<PharmacyAttachmentDomainModel>
    with _$PharmacyAttachmentModel {
  const PharmacyAttachmentModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PharmacyAttachmentModel({
    int? id,
    String? url,
    String? type,
  }) = _PharmacyAttachmentModel;

  factory PharmacyAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyAttachmentModelFromJson(json);

  @override
  PharmacyAttachmentDomainModel toDomainModel() {
    return PharmacyAttachmentDomainModel(
      id: id,
      url: url,
      type: type,
    );
  }
}
