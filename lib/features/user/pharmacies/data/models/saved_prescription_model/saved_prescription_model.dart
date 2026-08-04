import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/saved_prescription_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_prescription_model.freezed.dart';

part 'saved_prescription_model.g.dart';

@freezed
class SavedPrescriptionApiModel extends BaseApiModel<SavedPrescriptionModel>
    with _$SavedPrescriptionApiModel {
  const SavedPrescriptionApiModel._();

  const factory SavedPrescriptionApiModel({
    required int id,
    required String name,
    required String url,
    required String type,
    required String extension,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'last_used_at') required String lastUsedAt,
  }) = _SavedPrescriptionApiModel;

  factory SavedPrescriptionApiModel.fromJson(Map<String, dynamic> json) =>
      _$SavedPrescriptionApiModelFromJson(json);

  @override
  SavedPrescriptionModel toDomainModel() {
    return SavedPrescriptionModel(
      id: id,
      name: name,
      url: url,
      type: type,
      extension: extension,
      createdAt: createdAt,
      lastUsedAt: lastUsedAt,
    );
  }
}
